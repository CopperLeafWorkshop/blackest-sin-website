# Configure the CloudFlare provider
provider "cloudflare" {
    email = "${var.cloudflare_email}"
    token = "${var.cloudflare_token}"
}

# Add root canme (flattened) record
resource "cloudflare_record" "root" {
    domain = "blackestsin.com"
    name = "@"
    value = "copperleaf-blackestsin.s3-website-us-west-2.amazonaws.com"
    type = "CNAME"
    ttl = 3600
    proxied = "false"
}

# Add www record
resource "cloudflare_record" "www" {
    domain = "blackestsin.com"
    name = "www"
    value = "copperleaf-blackestsin.s3-website-us-west-2.amazonaws.com"
    type = "CNAME"
    ttl = 3600
    proxied = "true"
}
