provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "us-west-2"
}

resource "aws_s3_bucket" "b" {
    bucket = "copperleaf-blackestsin"
    acl = "public-read"

    website {
        index_document = "index.html"
        error_document = "error.html"
    }
}
