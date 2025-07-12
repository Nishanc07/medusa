## Medusa Backend Deployment on AWS using Terraform and GitHub Actions

This project provisions the infrastructure and automates the deployment of the [Medusa headless commerce platform](https://docs.medusajs.com/) backend on AWS ECS using **Fargate**, **Terraform**, and a **GitHub Actions CI/CD pipeline**.

---

## 🚀 Deployment in 3 Phases

---

### ✅ Phase 1: Provision AWS Infrastructure using Terraform

> This phase sets up the VPC, ECR, ECS cluster, Fargate service, IAM roles, security group and route table

#### Prerequisites

- AWS CLI configured (`aws configure`)
- Terraform v1.5+

#### Steps

```bash
cd terraform
terraform init
terraform plan
terraform apply

```
