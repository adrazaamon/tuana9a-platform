resource "kubernetes_manifest" "manifests" {
  for_each = fileset(path.module, "manifests/*.yml")
  manifest = yamldecode(file(each.value))
}
