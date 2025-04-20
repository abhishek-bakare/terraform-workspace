module "ec2" {

    source = "./module/ec2"
    region = var.region
    ami = var.ami
    instatype = lookup(var.instatype, terraform.workspace, "t2.micro")
  
}

variable "region" {

    type = string
    description = "this is the region"
  
}

variable "ami" {

    type = string
    description = "this is the region"
  
}

variable "instatype" {

    type = map(string)
    description = "this is the region"

    default = {
      "DEV" = "t2.micro"
      "STAGE" = "t2.medium"
      "PROD" = "t2.medium"
    }
  
}

