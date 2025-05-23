# devops-assessment--Karishma-abruk-containing-

## Terraform Cloud Module for Instance and VPC creation and web application deployment

### Pipeline Requirements
Create a CI/CD pipeline that:

Triggers automatically when code is pushed to GitHub
Validates Terraform code (formatting, syntax)
Requires manual approval before applying changes
Deploys infrastructure to AWS
Verifies deployment success
Provides clear feedback on pipeline status


### AWS Infrastructure to create
Create ssh key for instance to login from our machine in AWS console
Create VPC
Create Subnets (Public and Private)
Create Internet Gateway and attach it to VPC
Create Route table for public and private
Attach the IGW route to Public route table for internet access
Associate Public subnet to public route table and Private subnet to private route table
Create a Security group to VPC to allow 22 and 80 port inbound rule
Launch Instance on above specified resources and install web server


