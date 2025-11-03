locals {
  ec2_default = {
    env           = var.env
    project       = var.project
    tag_team      = var.tag_team
    tag_cc        = var.tag_cc
    ami_id        = var.ami_id
    instance_type = var.instance_type
    subnet_id     = var.subnet_id
    #vpc_id              = var.vpc_id
    #vpc_cidr            = var.vpc_cidr
    associate_public_ip = var.associate_public_ip
  }

  ec2_instances = {
    "web-01" = {
      name          = var.vm_name_web_01
      instance_type = var.vm_type_web_01
      env           = var.vm_env_web_01
    }

    "web-02" = {
      name          = var.vm_name_web_02
      instance_type = var.vm_type_web_02
      env           = var.vm_env_web_02
    }

    "web-03" = {
      name          = var.vm_name_web_03
      instance_type = var.vm_type_web_03
      env           = var.vm_env_web_03
    }

    "web-04" = {
      name          = var.vm_name_web_04
      instance_type = var.vm_type_web_04
      env           = var.vm_env_web_04
    }
  }
}

module "ec2" {
  source   = "./terraform/aws/compute/ec2"
  for_each = local.ec2_instances

  name                = each.value.name
  env                 = each.value.env
  project             = try(each.value.project, local.ec2_default.project)
  tag_team            = try(each.value.tag_team, local.ec2_default.tag_team)
  tag_cc              = try(each.value.tag_cc, local.ec2_default.tag_cc)
  ami_id              = try(each.value.ami_id, local.ec2_default.ami_id)
  instance_type       = each.value.instance_type
  subnet_id           = try(each.value.subnet_id, local.ec2_default.subnet_id)
  vpc_id              = try(each.value.vpc_id, local.ec2_default.vpc_id)
  vpc_cidr            = try(each.value.vpc_cidr, local.ec2_default.vpc_cidr)
  associate_public_ip = try(each.value.associate_public_ip, local.ec2_default.associate_public_ip)
}







