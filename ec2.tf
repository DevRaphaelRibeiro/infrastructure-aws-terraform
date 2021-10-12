### EC2 - Instances

### Criação de EC2 para DBservers
resource "aws_instance" "ec2-db" {
  ami           = "ami-005e54dee72cc1d00"
  instance_type = "t2.micro"

  ### VPC
  ### Atribuir Security Group
  ### Chave pública utilizada
  ### Script para deploy de servidor web 

}


### Criação de EC2 para Webservers

resource "aws_instance" "ec2-web01" {
  ami           = "ami-005e54dee72cc1d00"
  instance_type = "t2.micro"

  ### VPC
  ### Atribuir Security Group
  ### Chave pública utilizada
  ### Script para deploy de servidor web 

}


### Criação de EC2 para Webservers

resource "aws_instance" "ec2-web02" {
  ami           = "ami-005e54dee72cc1d00"
  instance_type = "t2.micro"

  ### VPC
  ### Atribuir Security Group
  ### Chave pública utilizada
  ### Script para deploy de servidor web 

}




