# Networking Variables
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "availability_zone" {
  description = "Availability zone for the subnets"
  type        = string
  default     = "us-east-1a"
}

# Security Variables
variable "web_sg_name" {
  description = "Name of the security group for the web server"
  type        = string
  default     = "web-server-sg"
}

variable "web_sg_ingress_ports" {
  description = "List of ingress ports for the web server SG"
  type        = list(number)
  default     = [22, 80, 443]
}

variable "db_sg_name" {
  description = "Name of the security group for the database"
  type        = string
  default     = "database-sg"
}

# Compute Variables
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for Amazon Linux 2"
  type        = string
  default     = "ami-0e58b56aa4d64231b" # This is for us-east-1, check region-specific AMI
}

variable "key_name" {
  description = "SSH key pair name for EC2 instance access"
  type        = string
}
