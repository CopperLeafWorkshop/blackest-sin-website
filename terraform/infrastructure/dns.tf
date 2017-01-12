# Configure the CloudFlare provider
provider "cloudflare" {
    email = "${var.cloudflare_email}"
    token = "${var.cloudflare_token}"
}

# Add a record to the domain
resource "cloudflare_record" "www" {
    domain = "blackestsin.com"
    name = "www"
    value = "copperleaf-blackestsin.s3-website-us-west-2.amazonaws.com"
    type = "CNAME"
    ttl = 3600
    proxied = "true"
}
