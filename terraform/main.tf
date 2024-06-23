resource "aws_instance" "ubuntu-instance" {
  ami           = var.ami
  instance_type = "t2.medium"  # Use t2.medium instead of t2.micro
  key_name      = "sp2key"
  security_groups = ["${aws_security_group.UbuntuSG.name}"]

  tags  = {
    Name  = "Ubuntu-EC2"
  }

  root_block_device {
    volume_size = 30
    volume_type = "gp2"
    encrypted   = false
  }
}
