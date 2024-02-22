variable "zone" {
  description = "Var for choosing zones"
  type = map
}

variable "image" {
  description = "Var for choosing images"
  type = map
  }

variable "instance" {
  description = "Var for choosing instance's names"
  type = map
}

############################################################

terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  zone = var.zone.b
}

resource "yandex_compute_instance" "zabbix-proxy" {
  name = var.instance.proxy
  resources {
    memory = 2
    cores  = 2
    core_fraction = 5
  }

  boot_disk {
    initialize_params {
      image_id = var.image.ubuntu22
      size     = 10
    }
  }

  network_interface {
    nat = true # set dynamic public ip-address
    subnet_id = "e2ll0jum9fls81krp5sn"
  }

  metadata = {
    ssh-keys = "kiryu:${file("~/.ssh/id_rsa.pub")}"
    user-data = file("/home/kiryu/projects/DevOps-practice/yc/Beginning/m2/creating-vms/metadata-file.cfg")
  }
}

############################################################

# resource "yandex_vpc_address" "proxy-ip" {
#   name = "proxy-ip"
#   external_ipv4_address {
#     zone_id = var.zone.b
#   }
# }

# output "ip-check" {
#   value = yandex_vpc_address.proxy-ip
# }
////max ip-static exceeded
