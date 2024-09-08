# output "IP_Address" {
#   value = docker_container.nodered-container.network_data[0].ip_address
# }

# output "Ports" {
#   value = docker_container.nodered-container.ports[0].external
# }

output "ContainerName" {
  value = docker_container.nodered-container.name
}

output "Full_IP" {
  value = join(":", [docker_container.nodered-container.network_data[0].ip_address, docker_container.nodered-container.ports[0].external])
}