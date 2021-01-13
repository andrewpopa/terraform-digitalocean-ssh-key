# terraform-digitalocean-ssh-key
Module to generate SSH key pair for digitalocean droplets

## Pre-requirements
- DigitalOcean [account](https://www.digitalocean.com/)
  - Personal Token Access - [how to](https://www.digitalocean.com/docs/apis-clis/api/create-personal-access-token/)
- [Terraform](https://www.terraform.io/downloads.html) (version 0.14.4)


## Assumption
You need to deploy [droplets](https://www.digitalocean.com/products/droplets/) to [DigitalOcean](https://www.digitalocean.com/) cloud and you need ssh key to access it.


## How to consume
You'll have to generate [personal token](https://www.digitalocean.com/docs/apis-clis/api/create-personal-access-token/) to access API. In my case I'm exporting it as environment variable `DIGITALOCEAN_TOKEN`

```bash
git clone git@github.com:andrewpopa/terraform-digitalocean-ssh-key.git
cd terraform-digitalocean-ssh-key/example
```

example of calling the module from your terraform code

```bash
module "key" {
  source = "github.com/andrewpopa/terraform-digitalocean-ssh-key"
}
```

## Outputs
| **Name**  | **Type** | **Description** |
| ------------- | ------------- | ------------- |
| public_key_name | string | The name of SSH key |
| public_key | string | Test of public key |
| fingerprint | string | The fingerprint of the SSH key |

`Private key` will be created locally.