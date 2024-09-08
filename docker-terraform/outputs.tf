output "IP_Address" {
  value = docker_container.nodered-container.network_data[0].ip_address
}

output "ContainerName" {
  value = docker_container.nodered-container.name
}