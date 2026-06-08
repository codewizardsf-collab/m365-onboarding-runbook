# Microsoft 365 Onboarding Runbook

PowerShell project for structured onboarding/offboarding workflows: Entra ID groups, mailbox licensing, Teams membership, device enrollment, and access review.

## Resume Fit

- Microsoft 365 administration.
- Azure AD/Entra ID user lifecycle.
- ITSM-ready runbook documentation.

## Run

```powershell
powershell -ExecutionPolicy Bypass -File scripts\New-OnboardingPlan.ps1
```

## Production Next Steps

- Add Graph API execution mode.
- Add ServiceNow/Jira ticket integration.
- Add approval gates for privileged access.
