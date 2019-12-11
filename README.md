# Checkpoint Virtual Server for Virtual Private Cloud using Custom Image

With this template, you can use IBM Cloud Schematics to create Checkpoint virtual server using custom image from your IBM Cloud account. Schematics uses [Terraform](https://www.terraform.io/) as the infrastructure-as-code engine. With this template, you can create and manage infrastructure as a single unit as follows. For more information about how to use this template, see the [IBM Cloud Schematics documentation](https://cloud.ibm.com/docs/schematics).

**Included**:

**Must have IBM IS Terraform Provider fixes**:


## Costs


* **VPC**: VPC charges are incurred for the infrastructure resources within the VPC, as well as network traffic for internet data transfer. For more information, see [Pricing for VPC](https://cloud.ibm.com/docs/vpc-on-classic?topic=vpc-on-classic-pricing-for-vpc).
* **VPC virtual servers**: You specify how many virtual servers to provision in each VPC. The price for your virtual server instances depends on the flavor of the instances, how many you provision, and how long the instances are run. For more information, see [Pricing for Virtual Servers for VPC](https://cloud.ibm.com/docs/infrastructure/vpc-on-classic?topic=vpc-on-classic-pricing-for-vpc#pricing-for-virtual-servers-for-vpc).

## Dependencies

Before you can apply the template in IBM Cloud, complete the following steps.

1.  Make sure that you have the following permissions in IBM Cloud Identity and Access Management:
    * **Manager** service access role for IBM Cloud Schematics
    * **Operator** platform role for VPC Infrastructure
2.  Ensure given VPC and SSHKey already exists in your account.

## Configuring your deployment values

### Required values

### Optional values

## Outputs
