# Makriman.com security checklist (2026-09-23) — diffs recommended, not applied

## Observed (evidence-backed)
| Control | Status | Evidence |
|---|---|---|
| Public A/AAAA/MX/TXT/CNAME/CAA | None on apex; www NXDOMAIN | dig + DoH (CF + Google) |
| Site HTTP(S) | Does not resolve | curl exit 6 (apex + www, http + https) |
| DNSSEC | unsigned | WHOIS |
| Nameservers | clyde / jessica (Cloudflare) | dig NS + DoH |
| makriman Worker (GIC) | Absent | CF MCP `workers_list` account `a1e5e542…` — 8 workers, none makriman-named |
| makriman R2 (GIC) | Absent | `r2_buckets_list` — inspir buckets only |
| makriman Worker (Berkeley acct) | Absent | Secondary check account `3640dd6b…` — 9 workers, none makriman.com |
| Universal SSL leafs | Present in CT (CF ECC CA 4 + GTS WE1) despite no public A | crt.sh 2026-08-14/15 → 2026-11-12 |
| Historical CT | GoDaddy + prior leafs through ~2024-09 | Consistent with prior GoDaddy cancel ~2024-09 |
| Zone settings API (SSL mode, Always HTTPS, HSTS, min TLS, WAF, Bot Fight, page rules, email routing, Workers routes) | **Not queried** | No `CLOUDFLARE_API_TOKEN` / wrangler unavailable on box; MCP bindings lack zone DNS/settings tools |

## Severity
| Finding | Severity | Notes |
|---|---|---|
| Non-resolving apex (no origin) | Info / intentional park | Matches dormant personal-brand reclaim + LANDER HOLD; low attack surface |
| DNSSEC unsigned | Low | Free zones often unsigned; enable if founder wants defense-in-depth after records exist |
| No SPF/DMARC (no MX) | Info | Correct for no-mail posture; do not add fake SPF claiming mail |
| CT certs exist without serving | Info | Normal CF Universal SSL pre-provision; no HTTPS listener publicly |
| Zone dashboard settings unread | Low (audit gap) | Need Zone:Read token or wrangler login for Full SSL / HSTS / Bot Fight verification |
| Brand hold without public copy | Low (honesty) | Empty resolve is honest under LANDER HOLD; if page ships, must say dormant personal brand — no product/hiring |

## Recommended diffs (manual later — NOT applied)
1. Keep DNS empty until park quiet vs holding page vs soft-redirect (GitHub XOR Medium) decision + tone/links greenlight.
2. When any origin is added: SSL/TLS = Full (strict); Always Use HTTPS on; min TLS 1.2+; consider HSTS only after stable HTTPS.
3. Do not enable Email Routing / MX until intentional.
4. Bot Fight / WAF: optional after traffic exists; N/A while non-resolving.
5. Add `CLOUDFLARE_API_TOKEN` (Zone:Read + Account:Read) scoped to GIC so next burn can dump settings JSON without dashboard scrape.
6. Do not attach makriman.com as custom domain to giclander / inspir Workers — would falsely imply company lander.
