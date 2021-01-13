// random name for ssh key
resource "random_pet" "this" {
  length = 3
}

// generates key
resource "tls_private_key" "key" {
  algorithm   = "RSA"
  ecdsa_curve = "4096"
}

// provide digitalocean ssh key to manage droplets
resource "digitalocean_ssh_key" "default" {
  name       = random_pet.this.id
  public_key = tls_private_key.key.public_key_openssh
}

// local private key
resource "local_file" "private_key_pem" {
  sensitive_content = tls_private_key.key.private_key_pem
  filename          = "${random_pet.this.id}.pem"
  file_permission   = "0600"
}