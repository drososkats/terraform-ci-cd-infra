# Diploma Thesis: Innovative Approaches of SDLC (Code Everyrithing)

This repository showcases the practical part of my diploma thesis, completed at the University of West Attica, Department of Informatics and Computer Engineering. The project focuses on Infrastructure as Code (IaC) and DevOps practices for provisioning cloud infrastructure and automating deployments using **Terraform**, **GitLab CI/CD**, and **Docker**.

---

## 📌 Project Objectives

- Design and provision cloud infrastructure using **Terraform**
- Automate Docker installation on provisioned VM via **remote-exec**
- Build and deploy a Dockerized application using **GitLab CI/CD pipeline**
- Emphasize end-to-end Infrastructure as Code and Continuous Deployment practices
- Compare Iac tools and evaluate cloud automation workflows

---

## 🔧 Technologies Used

| Tool        | Purpose                            |
|-------------|-------------------------------------|
| **Terraform** | Infrastructure provisioning on Linode |
| **GitLab CI/CD** | Automating infrastructure deployment and app delivery |
| **Docker**     | Containerization and runtime environment |
| **Linode**     | Cloud provider (IaaS) |
| **Git**        | Version control |
| **Linux (Ubuntu)** | VM base image and shell environment |

---

## 📁 Repository Structure

terraform-ci-cd-infra/
│
├── terraform/ # Terraform configuration files (.tf)
├── screenshots/ # Diagrams and output visuals
│ ├── concepts/ # Theoretical materials and DevOps diagrams
│ └── implementation/ # Terraform, pipeline, Docker provisioning screenshots
├── .gitlab-ci.yml # GitLab CI/CD pipeline configuration
├── Katsimpras_Drosos_diploma_thesis.pdf # Full thesis report (Greek language)
└── README.md # This file
