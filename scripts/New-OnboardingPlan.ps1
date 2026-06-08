param(
    [Parameter(Mandatory = $false)]
    [string]$UserPrincipalName = "new.user@example.com",
    [Parameter(Mandatory = $false)]
    [string]$Department = "Engineering"
)

@(
    [pscustomobject]@{ Step = 1; Action = "Create Entra ID account"; Target = $UserPrincipalName },
    [pscustomobject]@{ Step = 2; Action = "Assign Microsoft 365 license"; Target = "E3" },
    [pscustomobject]@{ Step = 3; Action = "Add department security groups"; Target = $Department },
    [pscustomobject]@{ Step = 4; Action = "Enable MFA registration campaign"; Target = $UserPrincipalName },
    [pscustomobject]@{ Step = 5; Action = "Open endpoint enrollment task"; Target = "Intune" }
)
