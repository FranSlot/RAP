# This file will try to create a pod in the Kubernetes cluster, that has the rights/ability to run kubectl commands
# See https://trstringer.com/kubectl-from-within-pod/

$RG = 'ampersand-rap-rg'
$AcrName = 'ampersandrapacr'

# create an azure container registry
az acr create --name $AcrName `
    --resource-group $RG `
    --sku Basic

# login to acr
az acr login --name $AcrName

# show containers
$AcrLoginServer = (az acr show --name $AcrName --query loginServer)
$AcrLoginServer = $AcrLoginServer.replace("`"", "")  # remove quotes

# create dockerfile
docker build . -t ampersand/elevatedpod

# show local images
docker images

# add new service account, role and role-binding
# this configures the RBAC of our deployment to be able to read and write 
kubectl apply -f ./service-account.yaml
kubectl apply -f ./role.yaml
kubectl apply -f ./role-binding.yaml

# add pod to cluster
kubectl apply -f ./pod.yaml

kubectl get pods

# check service accounts
kubectl get serviceaccounts
kubectl get serviceaccounts/internal-kubectl -o yaml
kubectl get roles
kubectl get rolebindings

$k8sVersion = (kubectl version -o yaml | ConvertFrom-Yaml).clientVersion.gitVersion

