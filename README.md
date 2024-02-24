# AWS Infrastructure Deployment with Terraform 🌟

🚀 **Overview:**

This repository showcases a Terraform-based deployment of a scalable and secure AWS infrastructure, designed as a practical test for DevOps skills in Infrastructure as Code (IaC) and AWS Cloud services.

💡 **Objective:**

The aim is to automate the deployment of a multi-server environment on AWS using Terraform, focusing on cost-efficiency by leveraging AWS's free tier resources. This project tests the candidate's ability to create a functional and secure cloud infrastructure within specified constraints.

🛠️ **Technology Stack:**

- **Terraform:** 🌐 For provisioning and managing AWS resources as code.
- **AWS EC2:** 💻 Two instances, one with Nginx and another with Apache, to demonstrate a multi-server setup.
- **AWS Application Load Balancer (ALB):** 🔄 To distribute incoming traffic between the two EC2 instances.
- **AWS Security Groups:** 🔒 To define traffic rules for the EC2 instances and the ALB, ensuring security best practices.

## 📚 Documentation

This README offers a step-by-step guide on deploying the infrastructure, with detailed explanations of the Terraform configurations used.

### 📖 Index

- [🏗️ Solution Architecture](#solution-architecture)
  - [🔧 Infrastructure Components](#infrastructure-components)
- [⚙️ Terraform Configuration](#terraform-configuration)
- [🚀 Provisioning and Deployment](#provisioning-and-deployment)
  - [🔑 Prerequisites](#prerequisites)
  - [🛠️ Deployment Steps](#deployment-steps)
- [🧪 Testing the Infrastructure](#testing-the-infrastructure)

---

## 🏗️ Solution Architecture

The designed infrastructure aims to provide a basic, scalable, and secure web application environment on AWS.

### 🔧 Infrastructure Components

1. **Application Load Balancer (ALB):** 🔄 Directs traffic to EC2 instances based on rules.
2. **EC2 Instances:**
   - **Server 01:** 🟢 Runs Nginx.
   - **Server 02:** 🔵 Runs Apache.
3. **Security Groups:** 🔒 Separate groups for ALB and EC2 instances to adhere to the principle of least privilege.

## ⚙️ Terraform Configuration

The Terraform setup is organized into multiple files for better manageability:

- `ALB-application.tf`: Configures the ALB.
- `ec2instance-apache.tf` & `ec2instance-nginx.tf`: Provisions the EC2 instances.
- `security-group-*.tf`: Defines the security groups and their rules.

## 🚀 Provisioning and Deployment

### 🔑 Prerequisites

- AWS Account 🌐
- Terraform installed 🛠️
- AWS CLI configured 🔧

### 🛠️ Deployment Steps

1. **Initialize Terraform:** 🌱
   ```bash
   terraform init
   ```
1. **Plan the Deployment: 📈:**
   ```bash
   terraform plan
   ```
1. **Apply the Configuration: ✅**
   ```bash
   terraform apply
   ```
## 🧪 Testing the Infrastructure

After deployment, the ALB's DNS name, provided as a Terraform output, serves as the entry point for testing.

### 🕵️‍♂️ Access the ALB URL:

The ALB URL is output by Terraform upon successful deployment. Look for an output variable named something like `alb_dns_name`.

### 🚀 Test the Load Balancing:

Use a browser or a tool like `curl` to make requests to the ALB URL. You should see responses alternately from the Nginx and Apache servers, indicating successful load balancing.

```bash
curl -X GET <alb_dns_name>
```




   
