provider "aws"{
  region="us-east-2"
  
}

#terraform {
 # cloud {
  #  organization = "terraform-learn-tj"

   # workspaces {
    #  name = "cli-workspace"
    #}
  #}
#}



resource "aws_instance" "myawsserver" {
  ami = var.image
  instance_type = var.hw
  #key_name = "useast2keypair"
  tags = {
    Name = lower (var.name)
    env = upper (var.env)
    owner = upper ("Gagandeep")
    dept = "eng"
    client = "jpmc"
  }
}




