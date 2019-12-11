##############################################################################
# This file creates the compute instances for the solution.
# - Virtual Server using Checkpoint custom image
##############################################################################

##############################################################################
# Read/validate sshkey
##############################################################################
data "ibm_is_ssh_key" "ckp_ssh_pub_key" {
  name = "${var.ssh_key_name}"
}

##############################################################################
# Read/validate vsi profile
##############################################################################
data "ibm_is_instance_profile" "ckp_profile" {
  name = "${var.ckp_profile}"
}

##############################################################################
# Create Checkpoint virtual server.
##############################################################################
resource "ibm_is_instance" "ckp_vsi" {
  name    = "${var.ckp_vsi_name}"
  image   = "${ibm_is_image.ckp_custom_image.id}"
  profile = "${data.ibm_is_instance_profile.ckp_profile.name}"

  primary_network_interface = {
    subnet = "${data.ibm_is_subnet.ckp_subnet1.id}"
  }

  vpc  = "${data.ibm_is_vpc.ckp_vpc.id}"
  zone = "${data.ibm_is_zone.zone.name}"
  keys = ["${data.ibm_is_ssh_key.ckp_ssh_pub_key.id}"]

  //User can configure timeouts
  timeouts {
    create = "10m"
    delete = "10m"
  }

  # Hack to handle some race condition; will remove it once have root caused the issues.
  provisioner "local-exec" {
    command = "sleep 30"
  }
}
