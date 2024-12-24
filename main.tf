resource "aws_instance" "Dhyey_D_Ngnix_Server"{ 
  ami           = var.ami_id
  instance_type = var.instance_type 

  root_block_device {
    volume_size = var.volume_size
  }

  vpc_security_group_ids = [aws_security_group.nginx_sg.id]
  user_data = file("nginx_install.sh")

  tags = {
    Name = var.instance_name
  }
}