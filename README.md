# Terraform-modules-AutoScaling
Terraform Auto Scaling implementing using modules with Application Load Balancer
1) Creation of VPC with 2 Public Subnets, 2 Private Subnets in availiablity zone 1a and 1b with Staging.tfvars file.
2) Creation of Instance with 1 Jump Server with Public Subnet and 1 Private Subnet Server as DB. 
3) Two variable files with QA.tfvars and Staging.tfvars 
4) Autoscaling configuration with ami = "ami-0123b531fc646552f" #Ubuntu Server 18.04 LTS (HVM), min_size = 2, max_size = 5,
   desired_capacity = 2 for Staging.tfvars whereas desired_capacity = 3 for QA.tfvars
5) Autoscaling running with Application Load Balancer
6) Add ALB alias in Route 53 with record type ="A"
