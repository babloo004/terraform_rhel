module "virtual_network" {
  source = "./modules/network"
}

module "vm" {
  source = "./modules/vm"
}