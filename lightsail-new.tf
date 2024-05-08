terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.61.0"
    }
  }
}

provider "aws" {
  
  region = "us-east-1"
}

# Generates a secure private k ey and encodes it as PEMl
  blueprint_id = "centos_7_2009_01"
  bundle_id = "medium_1_0"
  availability_zone = "us-east-1a"
  key_pair_name = "lamp"
}

output "public" {
  value = aws_lightsail_instance.server1.public_ip_address
}
output "username" {
  value = aws_lightsail_instance.server1.username
}

output "ssh-command" {
  value = "ssh -i ${local_file.ssh_key.filename} ${aws_lightsail_instance.server1.username}@${aws_lightsail_instance.server1.public_ip_address}"
}