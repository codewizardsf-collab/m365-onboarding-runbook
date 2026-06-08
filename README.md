# Microsoft 365 Onboarding Runbook

A PowerShell onboarding runbook that produces a structured Microsoft 365 user-provisioning plan covering identity, licensing, groups, MFA, and endpoint enrollment.

## Stack

PowerShell, Microsoft 365, Entra ID operations

## Problem

IT onboarding needs consistent execution across identity, licensing, groups, devices, and service desk tracking.

## Architecture

- The script accepts user and department inputs.
- It emits ordered provisioning steps.
- The output can be attached to an ITSM ticket or approval workflow.

## Implemented Production Readiness

- CI executes the PowerShell runbook.
- Steps are numbered and target-specific.
- The script is safe by default because it generates a plan rather than mutating live tenants.

## Run And Test

```powershell
powershell -ExecutionPolicy Bypass -File scripts\New-OnboardingPlan.ps1
```

## Quality Gates

- Project-specific GitHub Actions workflow included under .github/workflows/ci.yml.
- Generated build outputs and dependency folders are excluded through .gitignore.
- Tests and validation commands are intentionally small enough to run during code review.

## Production Extension Points

- Add Microsoft Graph execution mode.
- Add ServiceNow or Jira integration.
- Add privileged-access approval gates.

## Repository Hygiene

This repository contains original portfolio code only. It does not include employer source code, private resumes, generated binaries, local credentials, or large media files.

