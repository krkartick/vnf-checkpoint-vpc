

data "http" "vnfPost" {
  url = "https://us-south.functions.test.cloud.ibm.com/api/v1/namespaces/kartick.ravi%40ibm.com_dev/actions/vnfActionPackage/vnfAction"

  # Optional request headers
  request_headers {
    "Accept" = "application/json"
  }
}
