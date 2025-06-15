// -----------------------------------
// Output: Public IP of the Linode VM
// -----------------------------------

// This output provides the public IP address of the Linode instance.
// It can be used for SSH access, application testing, or pipeline deployment targets.

output "instance_ip" {
  description = "IP address of the Linode instance"
  value       = linode_instance.drosos-tfvm01.ip_address
}
