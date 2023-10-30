terraform {
  cloud {
    organization = "cloud-kinetics-admin"
    workspaces {
      name = "new-delete"
    }
  }




resource "random_string" "random" {
  length           = 16
  special          = true
  override_special = "/@£$"
}

output "result" {
value = random_string.random.result
}
