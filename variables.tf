##############################################################################
# Variable block - See each variable description
##############################################################################

##############################################################################
# vnf_ckp_cos_instance_id - Vendor provided COS instance-id hosting 
#                               Checkpoint image. 
#                               The value for this variable is enter at offering
#                               onbaording time. This variable is hidden from the user.
##############################################################################
variable "vnf_ckp_cos_instance_id" {
  default     = ""
  description = "The COS instance-id hosting the Checkpoint qcow2 image."
}

##############################################################################
# vnf_ckp_cos_image_url - Vendor provided Checkpoint image COS url
#                             The value for this variable is enter at offering
#                             onbaording time.This variable is hidden from the user.
##############################################################################
variable "vnf_ckp_cos_image_url" {
  default     = ""
  description = "The COS image object url for Checkpoint qcow2 image."
}

##############################################################################
# zone - VPC zone where resources are to be provisioned.
##############################################################################
variable "zone" {
  default     = "us-south-1"
  description = "The VPC Zone that you want your VPC networks and virtual servers to be provisioned in. To list available zones, run `ibmcloud is zones`."
}

##############################################################################
# vpc_name - VPC where resources are to be provisioned.
##############################################################################
variable "vpc_name" {
  default     = "ckp-1arm-vpc"
  description = "The name of your VPC where Checkpoint VSI is to be provisioned."
}

##############################################################################
# subnet_name - Subnet where resources are to be provisioned.
##############################################################################
variable "subnet_id" {
  default = "ckp-1arm-subnet"
  description =" The id of the subnet where Checkpoint VSI to be provisioned."
}
##############################################################################
# ssh_key_name - The name of the public SSH key to be used when provisining Checkpoint VSI.
##############################################################################
variable "ssh_key_name" {
  default     = "ckp-1arm-sshkey"
  description = "The name of the public SSH key to be used when provisining Checkpoint VSI."
}

##############################################################################
# ckp_image_name - The name of the Checkpoint custom image to be provisioned in your IBM Cloud account.
##############################################################################
variable "ckp_image_name" {
  default     = "ckp-r80-30"
  description = "The name of the Checkpoint custom image to be provisioned in your IBM Cloud account."
}

##############################################################################
# ckp_image_name - The name of your Checkpoint Virtual Server to be provisioned
##############################################################################
variable "ckp_vsi_name" {
  default     = "ckp-1arm-vsi01"
  description = "The name of your Checkpoint Virtual Server to be provisioned."
}

##############################################################################
# ckp_profile - The profile of compute CPU and memory resources to be used when provisioning Checkpoint VSI.
##############################################################################
variable "ckp_profile" {
  default     = "bx2-2x8"
  description = "The profile of compute CPU and memory resources to be used when provisioning Checkpoint VSI. To list available profiles, run `ibmcloud is instance-profiles`."
}
