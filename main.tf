resource "aws_lightsail_instance" "lamp-server" {
    name = "lamp"
    blueprint_id = "centos_7_2009_01"
    bundle_id = "medium_1_0"
    availability_zone = "us-east-1a"
    key_pair_name = "week9d2"
  
}