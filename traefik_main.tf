resource "helm_release" "my_traefik" {
  name  = "my-traefik"
  chart = "./traefik"
  namespace = "kube-system"

  set {
    name = "dashboard.enabled"
    value = true
  }

  set {
    name = "dashboard.domain"
    value = "traefik.talantzon.com"
  }

  set {
    name = "rbac"
    value = true
  }
}

