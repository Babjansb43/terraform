resource "aws_security_group" "bastion" {
  name        = "bastion-sg"
  description = "connecting admin through ssh"
  vpc_id      = "vpc-0b2cc03ae520e8690"

  ingress {
    description      = "sg"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
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