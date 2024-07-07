// name = value
// data types: interger, string, boolean, list, dictionary

// image_id = "ami-08a0d1e16fc3f61ea"

variable "aws_region" {
    type = string
    default = "us-east-1"
}

variable "image_id" {
    type = string
    default = "ami-08a0d1e16fc3f61ea"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "key_pair" {
    type = string
    default = "terraform_key"
}


variable "jenkins_master_script" {
    type = string
    default = "./scripts/jenkins_master.sh"
}

variable "jenkins_slave_script" {
    type = string
    default = "./scripts/jenkins_slave.sh"
}


variable "jenkins_master_tags" {
    type = map(string)
    default = {
      "Name" = "jenkins master"
      "Env"  = "Dev"
      "Owner" = "Rnstech"
    }
}

variable "jenkins_slave_tags" {
    type = map(string)
    default = {
      "Name" = "jenkins slave"
      "Env"  = "Dev"
      "Owner" = "Rnstech"
    }
}

variable "Sg_ports" {
    type = list(number)
    default = [ 22, 8080 ]
}


variable "sg_cidr_block" {
    type = list(string)
    default = [ "0.0.0.0/0" ]
}


variable "sg_tags" {
    type = map(string)
    default = {
      "Name" = "Jenkins Server"
      "Env"  = "Dev"
      "Owner" = "Rnstech"
    }
}
