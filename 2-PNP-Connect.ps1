# PNP Connect
# https://pnp.github.io/powershell/articles/connecting.html
# https://pnp.github.io/powershell/articles/authentication.html
# https://docs.microsoft.com/en-us/powershell/module/sharepoint-pnp/register-pnpazureadapp?view=sharepoint-ps
# https://portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/RegisteredApps
# https://mmsharepoint.wordpress.com/2018/12/19/modern-sharepoint-authentication-in-azure-automation-runbook-with-pnp-powershell/

# Scope
$tenant = "spjeff"
$clientFile = "PnP-PowerShell-Client.txt"

# Connect
$clientId = Get-Content $clientFile
$password = "password"
$secPassword = $password | ConvertTo-SecureString -AsPlainText -Force
Connect-PnPOnline -ClientId $clientId -Url "https://$tenant.sharepoint.com" -Tenant "$tenant.onmicrosoft.com" -CertificatePath '.\PnP-PowerShell.pfx' -CertificatePassword $secPassword
Get-PnPTenantSite | Format-Table -AutoSize
