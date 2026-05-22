# Email Outreach System

## Summary

Cold outreach to university admissions offices with Reoon-based pre-send verification and tier-priority sending.

---

## CLI

```bash
cd app

# Verify addresses (call Reoon, persist status, delete invalid/disabled)
npm run email:verify -- --dry-run    # preview
npm run email:verify                 # apply

# Import previously-downloaded Reoon CSV results without re-calling the API
npm run email:import-verifications -- path/to/Result-NNNNNN-ALL.csv

# Send emails
npm run email:send                   # up to EMAIL_DAILY_LIMIT (default 100) across all tiers
npm run email:send -- --tier 1       # restrict to Tier 1 only
npm run email:status                 # eligible-to-send breakdown by tier + send history
npm run email:logs                   # recent run summaries
```

**Email types** are decided at send time from the live response count on the college:
- **Outreach** — no responses on file → "please share your policy info"
- **Appreciation** — responses on file → "thanks + verify"

## Tier Semantics

Set by `scripts/verify-addresses.ts` from Reoon's power-mode status:

| Tier | Reoon status | Meaning |
|---|---|---|
| 1 | `safe`, `role_account` | High-confidence deliverable |
| 2 | `catch_all`, `inbox_full` | Domain accepts; mailbox uncertain |
| 3 | `unknown` or unverified | Couldn't determine |

`invalid` and `disabled` addresses are **deleted** from `emailaddresses` during verify — never sent to.

## Architecture

- `email_outreach_sends` — audit log; rows inserted at send time only, never `pending`
- `email_outreach_suppression` — durable suppression from Resend webhooks + user unsubscribes
- `emailaddresses.verification_*` — cached Reoon results, drives tier sort
- `email_outreach_log` — per-run summary
- Admin dashboard: `/admin/email-logs`

Eligibility at send time:
- Address exists in `emailaddresses`
- College not hidden
- Address not in suppression table
- No row in `email_outreach_sends` for this (college, address) with `status='sent'` in last 365 days OR any permanent status (`bounced`, `suppressed`, `complained`, `failed`)

## Resend Limits

- **Pro plan**: 50k/month, ~1,700/day, 10 req/sec
- Default `SEND_DELAY_MS=100` matches the 10 req/sec ceiling
- Override via env: `EMAIL_DAILY_LIMIT=1500 SEND_DELAY_MS=100 npm run email:send -- --tier 1`

## Cron

```bash
# Daily send at 9 AM
0 9 * * * cd /root/undocu_info/app && npm run email:send >> /var/log/email-outreach.log 2>&1
```
