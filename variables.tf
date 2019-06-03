locals {
  workspaces = {
    default = "${local.stg}"
    stg     = "${local.stg}"
    prd     = "${local.prd}"
  }

  workspace = "${local.workspaces[terraform.workspace]}"

  name = "myapp-${terraform.workspace}"
}
