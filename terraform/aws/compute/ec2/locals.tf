#-----------------------------
# Locals for EC2 Instance Tags
#-----------------------------

locals {
  tags = {
    Name        = "${var.name}-${var.env}-${var.project}"
    ManageBy    = "terraform"
    Environment = var.env
    Project     = var.project
    Tagteam     = var.tag_team
    CostCenter  = var.tag_cc
  }
}