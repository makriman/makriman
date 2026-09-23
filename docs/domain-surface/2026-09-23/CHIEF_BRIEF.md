# Makriman burn wave 2 — priority brief for Chief
**2026-09-23 ~12:36 PT · Makriman agent · makriman.com**

## Bottom line
makriman.com is still a **dormant personal-brand hold**, not a live company or product site. Public DNS is **NS-only** (clyde/jessica). Site **does not resolve**; www **NXDOMAIN**. No makriman Worker/Pages/R2 on GIC (or Berkeley). **LANDER HOLD** (2026-09-06) still applies — no lander shipped. GH profile README repo **exists** with open draft PRs #1–#3 (left alone). Park/DNS/security artifacts under `/workspace/makriman-burn-2026-09-23/`. **Zero DNS/deploy mutations** this burn. Domain-surface draft PR: https://github.com/makriman/makriman/pull/4 (open draft).

## Verified vs 2026-09-06
| Claim | Still true? |
|---|---|
| CF Registrar / NS clyde·jessica | Yes (WHOIS + dig + DoH) |
| Created 2026-08-14 / expiry 2036-08-14 | Yes (WHOIS) |
| Auto-renew | Prior/context yes; WHOIS flag not always exposed |
| No A/AAAA/MX/TXT; www NXDOMAIN | Yes |
| No makriman Worker/R2 on GIC | Yes (8 workers, 2 inspir R2 buckets) |
| Prior GoDaddy ~2024-09 cancel | Consistent with CT GoDaddy leafs |
| LANDER HOLD / park posture | Yes — still open, not shipped |
| GH `makriman/makriman` + Medium archive PR | Yes (PRs #1–#3 open drafts) |

## Security
Info/Low only: empty zone, DNSSEC unsigned, Universal SSL in CT without public A (normal CF). Zone dashboard settings (SSL mode/HSTS/WAF) **unread** — no API token / wrangler on box. Recommend read-only CF Zone:Read token for next audit.

## Copy honesty
No live false-active lander. Proposed dormant park + soft-redirect (GitHub **or** Medium) copy drafted, **not shipped**. Do not frame makriman.com as GIC company lander.

## Ask of founder (still yours / Ramakrishnan)
**Park quiet** vs **holding page** (tone/links greenlight) vs **soft-redirect target** (GitHub profile XOR Medium archive). Do not ship holding page / 301 until that call.

## Paths
- Full report: `/workspace/makriman-burn-2026-09-23/REPORT.md`
- Drafts: `/workspace/makriman-burn-2026-09-23/drafts/`
- Evidence: `/workspace/makriman-burn-2026-09-23/evidence/`
- PR URL: https://github.com/makriman/makriman/pull/4 — path `docs/domain-surface/2026-09-23/`
- Blocks: none (Auto-review). Audit gap: CF zone settings API only; dig +trace root timeouts (direct queries OK).
