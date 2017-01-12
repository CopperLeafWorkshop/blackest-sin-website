provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "us-west-2"
}

resource "aws_s3_bucket" "site" {
    bucket = "copperleaf-blackestsin"
    acl = "public-read"

    website {
        index_document = "index.html"
        error_document = "error.html"
    }
}

resource "aws_s3_bucket" "redirect" {
    bucket = "copperleaf-blackestsin-redirect"
    acl = "public-read"

    website {
        redirect_all_requests_to = "http://www.blackestsin.com/"
    }
}
