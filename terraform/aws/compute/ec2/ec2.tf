#--------------------
# EC2 Instance Module
#--------------------

data "template_file" "cloud_init" {
  template = file("./terraform/aws/compute/ec2/cloud_init.sh")
}

resource "aws_instance" "ec2" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  associate_public_ip_address = var.associate_public_ip
  user_data                   = base64encode(data.template_file.cloud_init.rendered)

  tags = merge(
    local.tags,
    {
      Name = "ec2-${local.tags.Name}"
    }
  )
}





