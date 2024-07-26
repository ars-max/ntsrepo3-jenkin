provider "aws" {
  region = "us-east-1"
 


}
variable "private_key_path" {

  default = "nts10key1.pem"

}


resource "aws_instance" "web-server" {

  ami           = "ami-04a81a99f5ec58529"

  instance_type = "t2.micro"

  key_name      = "nts10key"


  tags = {

    "Name": "ec2-nts"

  }
