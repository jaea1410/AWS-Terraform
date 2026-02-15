provider "aws" {
    profile = "default"
    region = "us-east-1"
}

resource "aws_instance" "ubuntu" {
    ami = "ami-0b6c6ebed2801a5cb"
    instance_type = "t3.micro"
    tags = {
        Name = "Ubuntu-AWS"
    }
}