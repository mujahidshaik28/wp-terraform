# Creating EC2 Instance
resource "aws_instance" "wordpress8" {
  ami                         = "ami-000c0df09737657b6"
  instance_type               = "t2.micro"
  key_name                    = "p4-key"
  vpc_security_group_ids      = [aws_security_group.ec2-SG.id]
  subnet_id                   = aws_subnet.subnet-1.id
  associate_public_ip_address = true
  user_data                   = file("userdata.sh")

  tags = {
    Name = "Wordpress"
  }
}
