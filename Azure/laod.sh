subscriptionId=$1
rg=$2
# customize those if needed
az account set --subscription $subscriptionId
# get vault
export tenantId=$(az account show -o tsv | awk '{print $11}')
export vaultName=$(az keyvault list --subscription=$subscriptionId -g $rg -o tsv | awk '{print $3}')
## extract and export secrets
export saKey=$(az keyvault secret show --subscription=$subscriptionId --vault-name="$vaultName" --name sa-key -o tsv | awk '{print $6}')
export saName=$(az keyvault secret show --subscription=$subscriptionId --vault-name="$vaultName" --name sa-name -o tsv | awk '{print $6}')
export scName=$(az keyvault secret show --subscription=$subscriptionId --vault-name="$vaultName" --name sc-name -o tsv | awk '{print $6}')
export spSecret=$(az keyvault secret show --subscription=$subscriptionId --vault-name="$vaultName" --name sp-secret -o tsv | awk '{print $6}')
export spId=$(az keyvault secret show --subscription=$subscriptionId --vault-name="$vaultName" --name sp-id -o tsv | awk '{print $6}')
# export secrets
export ARM_SUBSCRIPTION_ID=$subscriptionId
export ARM_TENANT_ID=$tenantId
export ARM_CLIENT_ID=$spId
export ARM_CLIENT_SECRET=$spSecret

# TF init
terraform init -input=false \
  -backend-config="access_key=$saKey" \
  -backend-config="storage_account_name=$saName" \
  -backend-config="container_name=$scName"

