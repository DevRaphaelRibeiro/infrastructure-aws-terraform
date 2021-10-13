### EC2 - Instances

### Criação de EC2 para DBservers
resource "aws_instance" "ec2-db" {
  ami           = "ami-054a31f1b3bf90920"
  instance_type = "t2.micro"

  ### VPC
  subnet_id = aws_subnet.prod-subnet-private-1.id
  availability_zone = var.AWS_REGION_AZ_DB
  ### Atribuir Security Group
  vpc_security_group_ids  = [aws_security_group.dbservers.id]
  

}


### Criação de EC2 para Webservers

resource "aws_instance" "ec2-web01" {
  ami           = "ami-054a31f1b3bf90920"
  instance_type = "t2.micro"

  ### VPC
  subnet_id = aws_subnet.prod-subnet-public-1.id
  availability_zone = var.AWS_REGION_AZ_WEB_1
  ### Atribuir Security Group
  vpc_security_group_ids = [aws_security_group.webservers.id]


}


### Criação de EC2 para Webservers

resource "aws_instance" "ec2-web02" {
  ami           = "ami-054a31f1b3bf90920"
  instance_type = "t2.micro"

  ### VPC
  subnet_id = aws_subnet.prod-subnet-public-2.id
  availability_zone = var.AWS_REGION_AZ_WEB_2
  ### Atribuir Security Group
  vpc_security_group_ids = [aws_security_group.webservers.id]

  

}


resource "aws_instance" "ec2-web03" {
  ami           = "ami-054a31f1b3bf90920"
  instance_type = "t2.micro"

  ### VPC
  subnet_id = aws_subnet.prod-subnet-public-3.id
  availability_zone = var.AWS_REGION_AZ_WEB_3
  ### Atribuir Security Group
  vpc_security_group_ids = [aws_security_group.webservers.id]

  

}