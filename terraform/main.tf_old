terraform {
  required_providers {
    multipass = {
      source  = "todoroff/multipass"
      version = "~> 1.5"
    }
  }
}

provider "multipass" {
  # Optional: explicit path to multipass binary
  # multipass_path = "/usr/local/bin/multipass"

  # Optional: timeout for commands (default 120s)
  command_timeout = 900
}

resource "multipass_instance" "dev" {
  name   = "my-dev-vm"
  cpus   = 2
  memory = "4G"
  disk   = "40G"
  image  = "jammy"  # Ubuntu 22.04 LTS
}

output "ip_address" {
  value = try(multipass_instance.dev.ipv4[0], "IP not ready")
}
