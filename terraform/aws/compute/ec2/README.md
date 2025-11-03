<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |
| <a name="provider_template"></a> [template](#provider\_template) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.ec2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_security_group.sg_public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [template_file.cloud_init](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_id"></a> [ami\_id](#input\_ami\_id) | The AMI ID to use for the EC2 instance. | `string` | n/a | yes |
| <a name="input_associate_public_ip"></a> [associate\_public\_ip](#input\_associate\_public\_ip) | Whether to associate a public IP address with the instance. | `bool` | `true` | no |
| <a name="input_env"></a> [env](#input\_env) | The environment for the EC2 instance (e.g., dev, prod). | `string` | n/a | yes |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | The type of instance to start. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the EC2 instance. | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | The project name for the EC2 instance. | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | The Subnet ID where the EC2 instance will be launched. | `string` | n/a | yes |
| <a name="input_tag_cc"></a> [tag\_cc](#input\_tag\_cc) | The cost center tag to assign to the EC2 instance. | `string` | n/a | yes |
| <a name="input_tag_team"></a> [tag\_team](#input\_tag\_team) | The team tag to assign to the EC2 instance. | `string` | n/a | yes |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | The CIDR block for the VPC. | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | The VPC ID where the security group will be created. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vm_arn"></a> [vm\_arn](#output\_vm\_arn) | The ARN of the EC2 instance. |
| <a name="output_vm_id"></a> [vm\_id](#output\_vm\_id) | The ID of the EC2 instance. |
| <a name="output_vm_private_ip"></a> [vm\_private\_ip](#output\_vm\_private\_ip) | The private IP address of the EC2 instance. |
| <a name="output_vm_public_dns"></a> [vm\_public\_dns](#output\_vm\_public\_dns) | The public DNS name of the EC2 instance. |
| <a name="output_vm_public_ip"></a> [vm\_public\_ip](#output\_vm\_public\_ip) | The public IP address of the EC2 instance. |
<!-- END_TF_DOCS -->