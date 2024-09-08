# output "IP_Address" {
#   value = docker_container.nodered-container.network_data[0].ip_address
# }

# output "Ports" {
#   value = docker_container.nodered-container.ports[0].external
# }

# output "ContainerName" {
#   value = docker_container.nodered-container.name
# }


output "ContainerName" {
  value = docker_container.nodered_container[*].name
}

output "Full_IP" {
  value = [for i in docker_container.nodered_container[*] : join(":", i.network_data[*].ip_address, i.ports[*]["external"])]
}
