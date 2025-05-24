resource "aws_security_group" "allow_http_ssh" {
  name        = var.web_sg_name
  description = "Allow Ingress rules to allow SSH and HTTP connections"
  vpc_id      = aws_vpc.my_vpc.id
}
