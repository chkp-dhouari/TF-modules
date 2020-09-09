resource "aws_instance" "ec2-mod" {
  ami = var.image
  instance_type = var.type
  availability_zone = var.az
}

