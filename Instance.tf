resource "aws_instance" "web" {
  ami                         = var.ami_id" #ami-0e58b56aa4d64231b Amazon Linux 2 AMI free tier
  instance_type               = var.instance_type
  key_name                    =  "Jenkindemo.pem"
  subnet_id                   = aws_subnet.public_subnet.id
  vpc_security_group_ids      = [aws_security_group.allow_http_ssh.id]
  user_data                   = file("install_apache.sh")
  availability_zone           = var.availability_zone
  associate_public_ip_address = true

  tags = {
    "Name" = "WebApp-terraform"
  }
}
