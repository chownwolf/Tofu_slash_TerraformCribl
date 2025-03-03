resource "docker_container" "leader" {
    image = docker_image.cribl.image_id
    name = "leader"
    hostname = "leader"
    env = ["CRIBL_DIST_MODE=master", "CRIBL_DIST_MASTER_URL=tcp://leadernode1234@0.0.0.0:4200", "ipv4_address:172.16.0.3" ]
    ports {
        internal = "9000"
        external = "9000"
    }
}
