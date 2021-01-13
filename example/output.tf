output "public_key_name" {
  description = "The name of SSH key"
  value       = module.key.public_key_name
}

output "public_key" {
  description = "Test of public key"
  value       = module.key.public_key
}

output "fingerprint" {
  description = "The fingerprint of the SSH key"
  value       = module.key.fingerprint
}