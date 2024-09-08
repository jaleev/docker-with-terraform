# Create a random string
resource "random_string" "random" {
  length  = 6
  special = false
  upper   = false
  count   = 2
}

# Download the image
resource "docker_image" "nodered_image" {
  name = "nodered/node-red:latest"
}

# Start a container
resource "docker_container" "nodered_container" {
  count = 2
  name  = join("-", ["nodered", random_string.random[count.index].result])
  image = docker_image.nodered_image.name
  ports {
    internal = 1880
    # external = 1880
  }
}

# Start another container
# resource "docker_container" "nodered-container2" {
#   name  = join("-", ["nodered", random_string.random.result])
#   image = docker_image.nodered-image.name
#   ports {
#     internal = 1880
#     # external = 1880
#   }
# }
