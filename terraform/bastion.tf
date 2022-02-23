resource "aws_instance" "Bastion-Server" {
  ami                  = "ami-033b95fb8079dc481"
  instance_type        = "t2.micro"
  key_name             = "aws-key"
  subnet_id            = aws_subnet.public-subnet-1.id 
  vpc_security_group_ids = [aws_security_group.load-balancer.id]
  associate_public_ip_address = true


  tags = {
    Name = "Bastion-Server"

  }

}
