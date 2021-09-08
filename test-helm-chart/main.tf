
provider "helm"{
  kubernetes {
    config_path = "~/.kube/config.d/kind/cicd-argo.config" 
  }
}

resource "helm_release" "clusterautoscaler" {
  name       = "cluster-controller"
  repository = "https://kubernetes.github.io/autoscaler"
  chart      = "cluster-autoscaler"
  version    = "9.10.6"
  namespace  = "kube-system" 
}
