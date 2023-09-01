provider "aws" {
  region = "us-east-1"
}
module "ec2_instances" {
  source         = "./modules/ec2_instance"
  ami_id         = "ami-007855ac798b5175e" # Amazon Linux 2 AMI
  instance_count = 2
  instance_name  = "webserver"
  instance_type  = "t2.micro"
}
output "instance_ids" {
  value = module.ec2_instances.instance_ids
}
output "public_ips" {
  value = module.ec2_instances.public_ips
}