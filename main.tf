module "createvpc" {
  source = "./modules/vpc"
  vpc-cidr = var.vpccidr
  vpc-name = var.vpcname
}
module "createig" {
  source = "./modules/ig"
  ig-vpcid = module.createvpc.vpc-vpcid
}
module "subnets" {
  source = "./modules/subnets"
  subnets-number = var.numberofsubnets
  subnets-vpcid = module.createvpc.vpc-vpcid
  subnets-rtid = module.rt.rt-id

}
module "rt" {
  source = "./modules/rt"
  rt-vpcid = module.createvpc.vpc-vpcid
  rt-igid = module.createig.ig-id
}