# CLAUDE.md — VendorShield / viditguw.github.io

## Project Overview

**VendorShield** is a static GitHub Pages site built for Tommy G's AI in Business Capstone project. It provides a Third-Party Risk Console (GRC dashboard) for managing vendor security issues and onboarding workflows.

## Repository Structure

```
viditguw.github.io/
├── grc.html                    # VendorShield Third-Party Risk Console (main dashboard)
├── vendor-onboarding-gate.html # Vendor Onboarding Gate UI
├── issues.json                 # Vendor issue data (used by the dashboard)
├── README.md                   # Brief project description
└── .claude/
    ├── settings.json           # Claude Code hook configuration
    └── hooks/
        └── session-start.sh   # Session startup hook (no-op for static site)
```

## Tech Stack

- **Pure static HTML/CSS/JavaScript** — no build tools, no frameworks, no package manager
- **GitHub Pages** — hosted directly from the `main` branch
- **Google Fonts** — IBM Plex Mono & IBM Plex Sans loaded via CDN
- **No dependencies to install** — everything runs in the browser

## Key Files

### `grc.html`
The main dashboard. Features:
- Vendor risk issue table with severity filtering (High / Medium / Low)
- Per-issue detail panel with audit trail, evidence scores, and agent reasoning
- AI agent action buttons (approve, escalate, request more evidence)
- Dark-themed GRC console UI

### `vendor-onboarding-gate.html`
Vendor onboarding workflow UI. Handles:
- Vendor intake and access control gates
- Status tracking for onboarding steps

### `issues.json`
Structured issue data consumed by the GRC dashboard. Each issue includes:
- `issue_id`, `vendor_name`, `vendor_email`, `control_id`
- `severity` (High / Medium / Low), `status`, `sla_deadline`
- Agent decision fields: `agent_decision`, `relevance_score`, `mapping_score`, `sufficiency_score`, `overall_confidence`
- `audit_trail` array of timestamped actor actions

## Development

Since this is a pure static site, no build step is required.

**To preview locally**, open any HTML file in a browser:
```bash
open grc.html
# or
python3 -m http.server 8080  # then visit http://localhost:8080/grc.html
```

**To edit data**, update `issues.json` directly — changes are reflected immediately on page reload.

## Deployment

The site deploys automatically via GitHub Pages when changes are pushed to the `main` branch. No CI/CD pipeline required.

## Claude Code Notes

- No linter or test suite is configured (static HTML site).
- The session-start hook exits immediately in remote environments — no dependencies to install.
- When editing HTML, validate structure manually by opening the file in a browser.
