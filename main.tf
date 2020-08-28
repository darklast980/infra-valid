module "database" {
  source = "./src/doc-db"

  region = var.region

  cluster_identifier = "terraform-doc-db"

  master_username = "docdbuser"

  master_password = "KX684y9XYamR8c5x"
}


module "ecr" {
  source = "./src/ecr"

  image_name = var.app_name
}

/*
module "ecs" {
  source = "./src/ecs"

  name = var.app_name

  image = module.ecr.repository
}
*/ 
