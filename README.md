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

---

### ✅ Phase 2: Build Medusa Backend Locally

You can either:
Clone Medusa.js and build a custom backend or use a Dockerfile. make sure Dockefile is in the root repository.

### ✅ Phase 3: Set up GitHub Actions for CD

The CD pipeline is triggered on every push (typically to the main branch) and includes the following key phases:

1. Checkout Code
2. Configure AWS Credentials
3. Login to Amazon ECR
4. Build and Push Docker Image
5. Deploy to AWS ECS

make sure you have a Dockerfile and ecs-task-definition.json file in the root. The ecs-task-definition.json defines how your container runs on ECS.
