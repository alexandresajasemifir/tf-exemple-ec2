variable "instance_type" {
  description = "Type d'instance à déployer"
  type        = string
  default     = "t2_micro"
}

variable "ec2_ami" {
  description = "ID de l'AMI à déployer."
  type        = string
}

variable "ec2_instance_name" {
  description = "Nom de l'instance déployée"
  type        = string
  default     = "ec2_vm"
}