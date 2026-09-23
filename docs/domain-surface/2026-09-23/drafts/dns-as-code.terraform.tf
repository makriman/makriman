# ILLUSTRATIVE ONLY — makriman.com DNS-as-code
# DO NOT terraform apply. Burn-wave 2026-09-23 explicitly forbids live DNS mutation.
# Zone currently: NS-only (clyde/jessica). Records = [].
# LANDER HOLD (2026-09-06): no lander until founder greenlights tone/links.

terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

# variable "zone_id" { description = "makriman.com zone id — fetch via API when token available; not captured this run" }
# variable "account_id" { default = "a1e5e542dc1d5fe5a5c6b2a10d755a81" }

# Example after founder chooses option B or C — leave commented:
# resource "cloudflare_record" "apex_workers_placeholder" {
#   zone_id = var.zone_id
#   name    = "@"
#   type    = "AAAA"
#   value   = "100::"
#   proxied = true
#   comment = "NOT APPLIED — placeholder for Workers custom domain / Pages"
# }
#
# resource "cloudflare_record" "www_cname" {
#   zone_id = var.zone_id
#   name    = "www"
#   type    = "CNAME"
#   value   = "makriman.com"
#   proxied = true
#   comment = "NOT APPLIED"
# }
