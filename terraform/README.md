# Terraform Configuration - Diploma Thesis Project

This folder contains the Terraform configuration used to provision a virtual machine on Linode as part of my diploma thesis on Infrastructure as Code and DevOps automation.

## 🧱 What This Terraform Setup Does

- Provisions a VM on Linode (Ubuntu)
- Uses 'remote-exec' to install Docker automatically
- Outputs the VM's public IP address

## 🛠️ Terraform Files Overview

- 'linode-vm01.tf' - Defines the Linode instance and Docker installation provisioner
- 'variables.tf' - Input variables (VM name, region, keys, etc.)
- 'drosos.tf' - Linode provider configuration
- 'output.tf' - Displays the VM IP after apply

## 🔐 Required Inputs

Make sure to define these variables before running:

- 'linode_token' - Your Linode API token
- 'VM_NAME', 'VM_TYPE', 'VM_REGION', 'VM_IMAGE', 'VM_ROOT_PASS'
- 'SSH_PUBLIC_KEY', 'SSH_PRIVATE_KEY'

## ⚙️ How It Works

The Terraform configuration in this folder is executed automatically as part of a GitLab CI/CD pipeline.
The '.gitlab-ci.yml' file in the root of the project defines the stages to:

- Initialize the Terraform working directory
- Validate and plan infrastructure changes
- Apply the infrastructure plan

  Manual execution fo 'terraform' commands is not required in this setup.
