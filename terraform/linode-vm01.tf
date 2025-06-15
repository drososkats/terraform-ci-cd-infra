//--------------------------------
// Linode Instance: drosos-tfvm01
//--------------------------------

//This resource provisions a virtual machine on Linode using dynamic input variables.
//After creation, it uses a remote-exec provisioner to install Docker automatically.

resource "linode_instance" "drosos-tfvm01" {
  label           = var.VM_NAME
  image           = var.VM_IMAGE
  region          = var.VM_REGION
  type            = var.VM_TYPE
  root_pass       = var.VM_ROOT_PASS
  authorized_keys = [var.SSH_PUBLIC_KEY]

// -------------------------------------
// Provisioning: Install Docker via SSH
// -------------------------------------

//Provision Docker installation using remote-exec provisioner

  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "root"
      private_key = var.SSH_PRIVATE_KEY //Use private key for authentication
      host        = linode_instance.drosos-tfvm01.ip_address
      timeout     = "10m" //Wait up to 10 minutes for the instance to become available
    }

    inline = [
      "curl -fsSL https://get.docker.com | sh", //Install Docker from official script
      "sudo apt-get install -y docker.io docker-compose", //Ensure Docker + Compose installed
      "systemctl start docker", //Start Docker service
      "systemctl enable docker" //Enable docker on boot
    ]
  }

}

