# Download the image
resource "docker_image" "nodered-image" {
  name = "nodered/node-red:latest"
}

# Start a container
resource "docker_container" "nodered-container" {
  name  = "nodered"
  image = docker_image.nodered-image.name
  ports {
    internal = 1880
    external = 1880
  }
}

