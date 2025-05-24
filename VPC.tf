
resource "aws_vpc" "my_vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = "fales"

  tags = {
    Name = "Terraform-VPC"
  }
}
