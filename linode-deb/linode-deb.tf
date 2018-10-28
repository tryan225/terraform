provider "linode" {
  token = "OAuth token here"
}

resource "linode_instance" "nanode-deb" {
        image = "linode/debian9"
        label = "nanode-deb-dh"
        group = "nanode-docker-hosts"
        region = "us-west"
        type = "g6-nanode-1"
        authorized_keys = [ "your public ssh key here" ]
        root_pass = "desired root password here"
}
