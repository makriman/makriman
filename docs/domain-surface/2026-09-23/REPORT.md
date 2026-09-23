# Makriman — Founder Burn Wave 2 Audit

**Domain:** makriman.com  
**Agent:** Makriman (personal-brand domain agent) on Ramakrishnan’s box  
**Accounts used:** GitHub `makriman`; Cloudflare GIC MCP (`a1e5e542dc1d5fe5a5c6b2a10d755a81`); secondary read Berkeley CF (`3640dd6b50428f619dbeb525c714382c`)  
**Audit time:** 2026-09-23 ~12:32–12:36 PT  
**Rule:** Zero live DNS mutations; no Workers/Pages deploys; no wrangler publish; no CF writes; no PR merges; park vs holding page vs soft-redirect left founder-open (LANDER HOLD)

---

## Executive summary

- **Public DNS remains NS-only** (clyde / jessica). No A/AAAA/MX/TXT/CNAME/CAA on apex; www is **NXDOMAIN**; common subdomains empty; HTTP(S) does not resolve (`curl` exit 6 — could not resolve host).
- **Registrar truth matches prior brief:** Cloudflare Registrar (IANA 1910); created **2026-08-14**; registry/registrar expiry **2036-08-14**; DNSSEC **unsigned**; registrant privacy redacted (Kerala, IN); status `clientTransferProhibited`. Auto-renew is asserted by prior/context (2026-09-06 memory / registrar UI) — WHOIS text does not always expose the auto-renew flag.
- **GIC Cloudflare compute surface has no makriman app:** 8 Workers listed — none makriman-named; R2 buckets are inspir-only; Berkeley account also has **0** makriman.com Workers.
- **GitHub profile README repo EXISTS** (`makriman/makriman`) — Markdown profile for user makriman, **not** a makriman.com lander. Open draft PRs **#1 AGENTS.md**, **#2 README restore**, **#3 Medium archive** — left untouched this burn.
- **Medium:** 9 posts 2017–2023 at makriman.medium.com (inventoried in PR #3) — not re-scraped as live product claims.
- **Copy honesty / LANDER HOLD:** No live lander. Brand-intent widget was skipped (2026-09-06). Empty non-resolving domain remains the honest posture until founder greenlights tone/links.
- **Founder gate unchanged:** park quiet vs holding page vs soft-redirect to GitHub **or** Medium — **not decided** this burn. Nothing shipped.

---

## Verified vs 2026-09-06 prior / memory claims

| Claim (2026-09-06 era / context) | Still true? | Evidence |
|---|---|---|
| CF Registrar; zone on GIC account | Yes (WHOIS CF; NS CF; context GIC) | `evidence/whois.txt`, DoH NS |
| Re-registered 2026-08-14 through 2036-08-14 | Yes | WHOIS created + registry/registrar expiry |
| Auto-renew | Claimed prior/context; not independently proven from WHOIS text alone | `whois-summary.json` note |
| Prior GoDaddy cancel ~2024-09 | Consistent with CT history (GoDaddy leafs through 2024-09) | `crtsh-summary.json` |
| NS clyde · jessica | Yes | dig + DoH |
| No A/AAAA/TXT/MX; www NXDOMAIN | Yes | dig-apex, dig-www, doh-all |
| No makriman Worker/Pages/R2 on GIC | Yes | `gic-workers.json`, `gic-r2.json` |
| LANDER HOLD — do not ship lander until tone/links greenlight | Still operative | Chief hold 2026-09-06; this burn shipped zero public HTML |
| GH profile README repo exists | Yes | `repos/makriman/makriman` + open draft PRs #1–#3 |
| Medium 9 posts 2017–2023 | Accepted from inventory (PR #3); not re-inventoried live | Context + PR list |

---

## Zone / DNS truth table

| Item | What exists (observed) | What would be honest |
|---|---|---|
| Nameservers | `clyde.ns.cloudflare.com`, `jessica.ns.cloudflare.com` | Same (Cloudflare-hosted Free zone claimed prior) |
| Apex A/AAAA | none | none until park-page or redirect Worker |
| www | NXDOMAIN | none until above |
| MX / mail | none | none (do not claim mail) |
| TXT (SPF/DMARC/verification) | none | none unless intentional |
| CAA | none | optional later with origin |
| DNSSEC | unsigned (WHOIS) | unsigned OK for empty park; enable later if desired |
| HTTP(S) | does not resolve | stay empty (quiet park) or honest dormant page / soft-redirect after founder call |
| Workers (GIC) | no makriman script | create only after founder decision |
| Pages / R2 makriman | none observed | N/A |
| Universal SSL (CT) | CF ECC CA 4 + GTS WE1 for apex+wildcard ~2026-08-14/15 → ~2026-11-12 | Expected CF pre-provision; no public HTTPS without records |
| Zone dashboard settings | **Not API-readable this run** | Need Zone:Read token / wrangler login |

**Evidence paths:** `evidence/dig-apex.txt`, `evidence/dig-www.txt`, `evidence/dig-full.txt`, `evidence/dig-subs.txt`, `evidence/doh-all.json`, `evidence/doh-google-all.json`, `evidence/whois.txt`, `evidence/whois-summary.json`, `evidence/crtsh-summary.json`, `evidence/gic-workers.json`, `evidence/gic-r2.json`, `evidence/curl-*.txt`.

### Workers list (GIC account) — 2026-09-23

`agent-mail-track`, `inspirlearning-www-redirect`, `inspirlearning`, `ailabgemini`, `lbsailab`, `giclander`, `landing`, `inspirlanding` — **0 makriman**.

### R2 (GIC)

`inspirlearning-next-cache-prod`, `inspirlearning-profile-images-prod` — **0 makriman**.

### Workers (Berkeley account — secondary)

`io-media`, `bumpa-bestie-sandbox`, eslams-*, `andrew-judgment-site` — **0 makriman.com**.

---

## Security findings + severity

| # | Finding | Severity | Notes |
|---|---|---|---|
| 1 | Non-resolving domain / empty zone | Info | Intentional dormant personal-brand reclaim + LANDER HOLD |
| 2 | DNSSEC unsigned | Low | Documented; enable when serving content if desired |
| 3 | No MX/SPF (no mail) | Info | Correct; avoid fake SPF |
| 4 | CT certificates exist without public A | Info | Cloudflare Universal SSL; no listener |
| 5 | Zone security settings unread (API gap) | Low | wrangler unavailable; no `CLOUDFLARE_API_TOKEN`; CF MCP has Workers/R2/D1/KV but **no zone DNS/settings tools** |
| 6 | Sibling empty brand holds | Info | FoV / other personal domains also park-style — do not auto-redirect makriman to GIC landers |

Details + recommended (unapplied) diffs: `drafts/security-checklist.md`.

---

## Copy honesty findings

| Surface | Claim risk | Finding |
|---|---|---|
| Live site | N/A | Does not resolve — no false “active product” page |
| GIC Workers landers | Low | giclander/inspir/landing exist for **other** brands; no makriman Worker |
| GitHub profile README | Low | Repo is profile Markdown, not makriman.com lander; draft PRs open, not merged this burn |
| Medium | Historical | Archive/posts 2017–2023 — do not invent current product from old essays |
| Proposed park / redirect copy | N/A until ship | Drafted under `drafts/`; **not shipped** |

**Proposed honest copy (not shipped):** `drafts/honest-park-copy.md`, `drafts/soft-redirect-copy.md`.

---

## GitHub surface

| Scope | Finding |
|---|---|
| `makriman/makriman` | Exists (public profile README repo); created 2026-05-25; pushed 2026-09-23 |
| Open draft PRs | #1 AGENTS.md; #2 README restore; #3 Medium archive under `content/medium/` — **left alone** |
| Domain-surface PR this burn | **Not opened** by executor (constraint: coordinator may open; placeholder pending Cloud Agent) |

**Statement:** GH profile surface exists; **do not** treat it as the lander. Domain-surface artifacts are workspace drafts for a possible separate PR under `docs/domain-surface/2026-09-23/`.

---

## Explicit NOT applied list

- No Cloudflare DNS record create/update/delete  
- No wrangler DNS / route / deploy / publish  
- No zone setting changes (SSL, HSTS, Always HTTPS, WAF, Bot Fight, page rules, redirects, email routing)  
- No Workers or Pages create/deploy for makriman  
- No R2 custom domains  
- No terraform apply  
- No merge of GitHub PRs #1/#2/#3  
- No holding page / 301 / soft-redirect shipped  
- No clone of `makriman/makriman` for broad edits  

---

## Recommended next founder / Chief actions

**Do not decide for founder.** Options remain:

1. **Park quiet** — keep NS-only (current honest state under LANDER HOLD).
2. **Park with holding page / optional Pages** — only after founder greenlights tone/links; use `drafts/honest-park-copy.md`.
3. **Soft-redirect** — founder picks **one** of: `https://github.com/makriman` **or** `https://makriman.medium.com`; use `drafts/soft-redirect-copy.md`. Do not frame as GIC lander.

**Chief ops hygiene (non-decision):**
- Inject read-only `CLOUDFLARE_API_TOKEN` (Zone:Read + Account:Read) on GIC so next burn can dump SSL/HSTS/WAF/page-rules without dashboard scrape.
- Keep PE/GTM/Sales off inventing makriman.com product claims until disposition call.
- Coordinator may open draft PR packing these artifacts under `docs/domain-surface/2026-09-23/` on an agreed repo (often the profile repo or a docs surface) — **pending Cloud Agent**.

---

## Audit limitations / blocks

| Item | Status |
|---|---|
| Live DNS / CF mutation | Intentionally skipped (success criterion) |
| Auto-review blocks | **None** this run |
| wrangler zone API | Unavailable / not logged in on box; no `CLOUDFLARE_API_TOKEN` |
| CF MCP zone tools | Unavailable (bindings = Workers/R2/D1/KV/Hyperdrive only) |
| dig +trace | Root/TLD path timed out / no servers reached after roots; direct NS/A/AAAA/DoH queries succeeded |
| MCP account_id | Required (multi-account credentials); GIC + Berkeley both queried read-only |
| Medium live scrape | Not required; rely on prior inventory in PR #3 |

---

## Artifact index

```
/workspace/makriman-burn-2026-09-23/
  REPORT.md                 ← this file
  CHIEF_BRIEF.md            ← paste-ready for Chief
  evidence/                 ← dig, whois, DoH, curl, workers, R2, crt.sh, GH PR list
  drafts/                   ← DNS-as-code, security checklist, park/redirect copy
```
