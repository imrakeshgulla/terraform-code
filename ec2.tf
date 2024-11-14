#Creating 1st EC2 instance
resource "aws_instance" "instance-wordpress" {
  ami = "ami-0984f4b9e98be44bf"
  instance_type = "t2.micro"
  key_name = "internship"
  subnet_id = aws_subnet.public_sb_1.id
  vpc_security_group_ids = [aws_security_group.security1.id]
  associate_public_ip_address = true
  user_data = file("data.sh")
tags = {
    Name = "public_python1"
}
}
