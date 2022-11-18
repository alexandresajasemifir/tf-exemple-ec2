## Module de création d'une instance EC2
Ce module sert à déployer une instance EC2 sur AWS.

## Usage

# module "ec2" {
#  source            = "github.com/alexandresajasemifir/tf-exemple-ec2.git"
#  instance_type     = "t3_small"
#  ec2_ami           = <AMI de l'image à dépoyer>
#  ec2_instance_name = "mon_nom_de_vm"
#}