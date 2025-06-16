# Diploma Thesis: Innovative Approaches of SDLC (Code Everything)

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

```text
terraform-ci-cd-infra/
│
├── screenshots/ # Diagrams and output visuals
│ ├── concepts/ # Theoretical materials and DevOps diagrams
│ └── implementation/ # Terraform, pipeline, Docker provisioning screenshots
|
├── terraform/ # Terraform configuration files (.tf)
│ ├── README.md
│ ├── drosos.tf
│ ├── linode-vm01.tf
│ ├── output.tf
│ └── variables.tf
│
├── .gitlab-ci.yml # GitLab CI/CD pipeline configuration
├── Katsimpras_Drosos_diploma_thesis.pdf # Full thesis report (Greek language)
├── LICENSE
└── README.md # This file

```
## ⚙️ Terraform Configuration

The Terraform files define:

- A Linode VM using dynamic variables (`VM_NAME`, `VM_IMAGE`, `VM_REGION`, etc.)
- SSH access using provided public/private keys
- A `remote-exec` provisioner to install **Docker** on VM creation
- Outputs the public IP for deployment

> See [`terraform/`](./terraform/) for detailed configuration.

--- 

## 🛠️ GitLab CI/CD Pipeline

The `.gitlab-ci.yml` file automates:

- Terraform `init`, `plan`, and `apply`
- Testing a Python demo app (not included here)
- Docker image build and push
- Deploying the image on the provisioned Linode VM using SSH

> Full pipeline stages and Docker deployment shown in [`screenshots/implementation/`](./screenshots/implementation/)

---

## 🖼️ Sample Visuals

| Concepts (Theory)                                | Implementation (Hands-On)                         |
|--------------------------------------------------|--------------------------------------------------|
| DevOps lifecycle, IaC comparison                 | Terraform plan output, CI/CD pipeline stages     |
| Cloud architecture diagrams                      | Docker installed on VM, deployed container app   |

> More visuals in the [`screenshots/`](./screenshots/) folder.

---

## 🧠 Key Learnings

- Hands-on application of Infrastructure as Code and DevOps principles
- Integration of open-source tooling in cloud provisioning
- Practical experience with cloud deployment and automation workflows
- Team-ready mindset for CI/CD-based engineering environments

---

## 📎 Additional Notes

- The deployed application is a **simple demo app** used for testing CI/CD and Docker functionality.
- This repository does not include application code for clarity and licensing reasons.
- Secrets and credentials are managed via GitLab CI/CD project variables.

---

## 📄 Full Report

You can find the full diploma thesis report [here](./Katsimpras_Drosos_diploma_thesis.pdf) (written in Greek).

---

## 💼 Author

**Drosos Katsimpras**  
📍 Athens, Greece  
🎓 University of West Attica — Informatics & Computer Engineering  
🔗 [LinkedIn](https://linkedin.com/in/katsimprasdrosos)  
🔗 [GitHub](https://github.com/drososkats)

---

## 📬 Contact & Use

This project is part of my personal learning journey and academic work.  
If you'd like to discuss collaboration or opportunities in cloud or DevOps roles, feel free to connect or contact me.

---

## 🛡 License

This repository is licensed under the [MIT License](./LICENSE).

