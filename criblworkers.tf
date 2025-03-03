resource "docker_container" "worker1" {
    image = docker_image.cribl.image_id
    name = "worker1"
    hostname = "worker1"
    env = ["CRIBL_DIST_MODE=worker","-p 9000:9000", "group=defulat", "CRIBL_DIST_MASTER_URL=tcp://leadernode1234@172.17.0.2:4200"]
}

resource "docker_container" "worker2" {
    image = docker_image.cribl.image_id
    name = "worker2"
    hostname = "worker2"
    env = ["CRIBL_DIST_MODE=worker","-p 9000:9000", "group=defulat", "CRIBL_DIST_MASTER_URL=tcp://leadernode1234@172.17.0.2:4200"]
}

resource "docker_container" "worker3" {
    image = docker_image.cribl.image_id
    name = "worker3"
    hostname = "worker3"
    env = ["CRIBL_DIST_MODE=worker","-p 9000:9000", "group=defulat", "CRIBL_DIST_MASTER_URL=tcp://leadernode1234@172.17.0.2:4200"]
}
