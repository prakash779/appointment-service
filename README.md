# **Cloud-Native Deployment Pipeline: GitHub → AWS (EKS, ECR, VPC)

This repository contains infrastructure-as-code and CI/CD automation for deploying containerized applications using:

- **Terraform** for AWS infrastructure provisioning
- **Docker** for containerization
- **Kubernetes** manifests for EKS
- **GitHub Actions** for CI/CD pipeline
- **Amazon Web Services (EKS, ECR, VPC, ALB)** for cloud deployment

---

## Project Structure


![art](https://github.com/user-attachments/assets/796bda06-f29b-49f9-a569-bdfd6870ea93)

├── terraform/ # Terraform code for AWS infra (VPC, EKS, ECR)
├── docker/ # Dockerfiles for application containers
├── k8s/ # Kubernetes deployment, service, ingress
├── .github/workflows/ # GitHub Actions CI/CD pipelines
└── README.md # You're here!


**Build and Push Docker Image**

**Deploy to EKS**

kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
kubectl apply -f k8s/ingress.yaml

**GitHub Actions**
**CI/CD CI Pipeline includes:**

Terraform Plan & Apply
Docker Build
Push to ECR
Deploy to EKS
