
module "network" {
  source = "./modules/network"

  cidr_block = var.cidr_block

  public_sbnts = var.public_sbnts

  private_sbnts = var.private_sbnts
}