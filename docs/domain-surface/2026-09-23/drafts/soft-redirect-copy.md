# Proposed soft-redirect postures (NOT shipped)

Use only if founder chooses **soft-redirect** and picks **exactly one** target. Do not ship before DNS + Worker deliberately provisioned. Do not frame makriman.com as a GIC company lander.

## Option targets (founder must pick one)

1. **GitHub profile** — `https://github.com/makriman`  
   (Profile README repo exists; open draft PRs #1/#2/#3 are profile/content work, not a lander.)

2. **Medium archive** — `https://makriman.medium.com`  
   (9 posts 2017–2023; inventory already in draft PR #3 under `content/medium/` — do not edit that PR here.)

## Behavior (after founder pick)
- HTTP 301 (or 302 while testing) from `https://makriman.com/*` and `https://www.makriman.com/*` → chosen target.
- Optional interstitial (1 sentence) only if founder wants human-readable honesty before hop:

> This is a personal-brand domain that is not hosting a site right now. You are being redirected to [GitHub profile / Medium archive].

## Do not
- Claim makriman.com “is now” GIC / Inspir / ElectronicSlams
- Redirect to GIC company landers (`giclander`, inspirlearning.com, etc.) unless founder explicitly asks later
- Soft-redirect to both GitHub and Medium at once without a clear primary
- Ship before founder greenlights tone/links (LANDER HOLD 2026-09-06)
