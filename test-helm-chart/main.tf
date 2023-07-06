
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

resource "helm_release" "ebs_csi_dirver" {
  name             = "argocd"
  repository       = "https://kubernetes-sigs.github.io/aws-ebs-csi-driver"
  chart            = "aws-ebs-csi-driver"
  namespace        = "kube-system"
  create_namespace = true
  version          = "2.20.0"
}
