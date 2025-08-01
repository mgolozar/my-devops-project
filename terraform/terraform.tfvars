key_name       = "terraform-keypair"
filename       = "terraform-key.pem"
vpccidr_block  = "10.0.0.0/16"
vpctagname     = "MainVPC"
cidr_block     = "10.0.1.0/24"
ami_id         = "ami-0253a7ea84bc17a73"
instance_type  = "t3.micro"
machine_name   = "MainInstance"
machine_system = "TerraformTutorial"

servercount=3