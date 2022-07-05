
provider "helm"{
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "helm_release" "clusterautoscaler" {
  name       = "cluster-controller"
  repository = "https://kubernetes.github.io/autoscaler"
  chart      = "cluster-autoscaler"
  version    = "9.10.6"
  namespace  = "kube-system" 
}

resource "helm_release" "argocd" {
  name             = "argocd"
  repository       = "https://argoproj.github.io/argo-helm"
  chart            = "argo-cd"
  namespace        = "argocd"
  create_namespace = true
  version          = "4.9.11"
}
