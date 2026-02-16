provider "aws" {
    profile = "default"
    region = "us-east-1"
}

# 1. Create VPC
resource "aws_vpc" "Prod-VPC" {
    cidr_block = "10.19.0.0/16"
    tags = {
        Name = "Prod-VPC"
    }
}

# 2. Create Internet Gateway
# 3. Create Custom Route Table
# 4. Create a Subnet
# 5. Associate Subnet with Route Table
# 6. Create Security Group to Allow Port 22,80,443
# 7. Create a Network Interface with an IP in the Subnet that was created in step 4
# 8. Assign an elastic IP to the network interface created in step 7
# 9. Create Ubuntu server and install/enable Apache2

/* resource "aws_instance" "ubuntu" {
    ami = "ami-0b6c6ebed2801a5cb"
    instance_type = "t3.micro"
    tags = {
        Name = "Ubuntu-AWS"
    }
} */