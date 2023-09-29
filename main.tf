resource "random_string" "random" {
  length           = 16
  special          = true
  override_special = "/@£$"
}

ouput "result" {
value = resource.random_string.random.string
}
