output "public_key_name" {
  description = "The name of SSH key"
  value       = digitalocean_ssh_key.default.name
}

output "public_key" {
  description = "Test of public key"
  value       = digitalocean_ssh_key.default.public_key
}

output "fingerprint" {
  description = "The fingerprint of the SSH key"
  value       = digitalocean_ssh_key.default.fingerprint
}