resource "helm_release" "my_traefik" {
  name  = "my-traefik"
  chart = "./traefik"
  namespace = "kube-system"
}