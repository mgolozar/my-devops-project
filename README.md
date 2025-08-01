 
# My DevOps Terraform Project

This project automates the provisioning of AWS infrastructure using **Terraform**, following DevOps and cloud security best practices.

## Features

- **AWS VPC** with a public subnet
- **Security Group** allowing SSH access (port 22)
- **EC2 Instance** with auto-generated SSH key pair (managed by Terraform)
- **Remote Backend** using **S3 + DynamoDB** for secure and team-based state management
- Full **Infrastructure as Code (IaC)** with modular design and environment variables
- Supports **GitHub integration**, remote execution, and CI/CD readiness

---

##  Project Structure

| File                   | Purpose                                  |
|------------------------|------------------------------------------|
| `main.tf`              | Defines resources (VPC, EC2, etc.)       |
| `variables.tf`         | Input variable definitions               |
| `terraform.tfvars`     | Variable values (excluded from Git)      |
| `backend.tf`           | Remote backend config (S3 + DynamoDB)    |
| `.gitignore`           | Ensures sensitive files are ignored      |
| `terraform-key.pem`    | SSH private key (auto-generated, ignored)|

---

##  Requirements

- [Terraform CLI](https://developer.hashicorp.com/terraform/downloads)
- AWS Account + CLI (`aws configure`)
- Remote backend requires:
    - S3 Bucket: `terraform-state-mgolozar`
    - DynamoDB Table: `terraform-locks`

---

##  Usage

### 
1. Initialize Terraform with backend:

terraform init
2. Review the infrastructure plan:

terraform plan
3. Apply and deploy resources:

terraform apply




Security Notes
-No hardcoded AWS credentials in code. Use aws configure or environment variables.

-Private key (.pem) and state files are ignored by Git.

-Remote state is encrypted and locked using S3 + DynamoDB.





TODO / Next Steps
 -Add CI/CD pipeline via GitHub Actions

 -Migrate to Terraform Cloud for full SaaS-based execution 

 -Add parameterization for multi-environment support (dev, staging, prod)






Author
Maryam Golozar
DevOps & Cloud Security Enthusiast


License
MIT License – Feel free to use and modify with credit.


 
