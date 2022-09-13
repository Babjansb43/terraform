resource "aws_security_group" "bastion" {
  name        = "bastion-sg"
  description = "connecting admin through ssh"
  vpc_id      = vpc-0603de69d0195f915

  ingress {
    description      = "sg"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["103.110.170.85/32"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "bastion-sg"
    programatic = true
  }
}