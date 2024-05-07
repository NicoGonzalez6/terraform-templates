# AWS VPC Template

## Overview
This Terraform template sets up a basic infrastructure on AWS consisting of the following resources:

- Main VPC
- 2 Subnets (1 private, 1 public)
- 2 Route Tables for private and public subnets
- 1 Internet Gateway
- 1 NAT Gateway
- 1 Elastic IP for the NAT Gateway

Before running the Terraform script, ensure that you have configured the necessary credentials.

## Instructions

1. Clone this repository.
2. Navigate to the directory containing the Terraform files.
3. Make sure you have the AWS CLI installed and configured with the necessary credentials.
4. Run `terraform init` to initialize the working directory.
5. Run `terraform plan` to see the execution plan.
6. Run `terraform apply` to apply the changes and create the infrastructure.
7. After use, run `terraform destroy` to tear down the infrastructure.

## Usage

```bash
git clone <repository_url>
cd <repository_directory>
terraform init
terraform plan
terraform apply