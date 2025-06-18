# # Request admin privileges at the start
# if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
#     Write-Host "Restarting script as administrator..."
#     Start-Process powershell "-NoExit -File `"$PSCommandPath`"" -Verb RunAs
#     exit
# }

$currentPolicy = Get-ExecutionPolicy -Scope CurrentUser
Write-Host "Current Execution Policy: $currentPolicy"
Write-Host "Select the Execution Policy you want to set:"
Write-Host "1. Restricted"
Write-Host "2. AllSigned"
Write-Host "3. RemoteSigned"
Write-Host "4. Unrestricted"
Write-Host "5. Bypass"

$choice = Read-Host "Enter the number of your choice (1-5)"

switch ($choice) {
    1 { $policy = "Restricted" }
    2 { $policy = "AllSigned" }
    3 { $policy = "RemoteSigned" }
    4 { $policy = "Unrestricted" }
    5 { $policy = "Bypass" }
    default {
        Write-Host "Invalid selection. Exiting."
        exit
    }
}

$confirm = Read-Host "Are you sure you want to change the execution policy to $policy? (y/n)"
if ($confirm -ne 'y') {
    Write-Host "Operation cancelled."
    exit
}

try {
    Set-ExecutionPolicy -ExecutionPolicy $policy -Scope CurrentUser -Force
    Write-Host "Execution policy changed to $policy."
} catch {
    Write-Host "Failed to change execution policy: $_"
}