// ------------------------------
// Authentication
// ------------------------------

variable "linode_token" {
  type = string
  description = "Personal access token for authenticating with Linode API"
}

// ------------------------------
// Linode VM Configuration
// ------------------------------

variable "VM_NAME" {
  type = string
  description = "Label name for the Linode instance"
}

variable "VM_TYPE" {
  type = string
  description = "Linode plan type
}

variable "VM_REGION" {
  type = string
  description = "Linode deployment region"
}

variable "VM_IMAGE" {
  type = string
  description = "Linode image ID (Ubuntu)"
}

variable "VM_ROOT_PASS" {
  type = string
  description = "Root password for the Linode instance (for initial access)"
}

// ------------------------------
// SSH Key Configuration
// ------------------------------

variable "SSH_PUBLIC_KEY" {
  description = "The SSH PUBLIC KEY content for authorized access"
  type        = string
}

variable "SSH_PRIVATE_KEY" {
  description = "The SSH PRIVATE KEY content used by remote-exec to connect"
  type        = string
}
