$env:REGISTRY_NAME="registryztd0636"
$env:SOURCE_REGISTRY="k8s.gcr.io"
$env:CONTROLLER_IMAGE="ingress-nginx/controller"
$env:CONTROLLER_TAG="v1.0.4"
$env:PATCH_IMAGE="ingress-nginx/kube-webhook-certgen"
$env:PATCH_TAG="v1.1.1"
$env:DEFAULTBACKEND_IMAGE="defaultbackend-amd64"
$env:DEFAULTBACKEND_TAG="1.5"

az acr import --name $env:REGISTRY_NAME --source $env:SOURCE_REGISTRY/$env:CONTROLLER_IMAGE:$env:CONTROLLER_TAG --image $env:CONTROLLER_IMAGE:$env:CONTROLLER_TAG
az acr import --name $env:REGISTRY_NAME --source $env:SOURCE_REGISTRY/$env:PATCH_IMAGE:$env:PATCH_TAG --image $env:PATCH_IMAGE:$env:PATCH_TAG
az acr import --name $env:REGISTRY_NAME --source $env:SOURCE_REGISTRY/$env:DEFAULTBACKEND_IMAGE:$env:DEFAULTBACKEND_TAG --image $env:DEFAULTBACKEND_IMAGE:$env:DEFAULTBACKEND_TAG