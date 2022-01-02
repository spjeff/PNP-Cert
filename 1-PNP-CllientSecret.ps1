# PNP Client Secret
# https://medium.com/ng-sp/sharepoint-add-in-permission-xml-cheat-sheet-64b87d8d7600
# https://www.koskila.net/fastest-way-to-verify-your-client-id-and-client-secret-are-valid-with-powershell/

<#
The app identifier has been successfully created.
Client Id:  	89706f98-2d2f-49b8-88b3-0eddd71ec25f
Client Secret:  	OhYnQV2HqLm8LoZOz7C8QSKr81VCNyOWQG9XEjQP444=
Title:  	PNP-PowerShell
App Domain:  	localhost
Redirect URI:  	https://localhost

#>

# Scope
$clientId = "89706f98-2d2f-49b8-88b3-0eddd71ec25f"
$clientSecret = "OhYnQV2HqLm8LoZOz7C8QSKr81VCNyOWQG9XEjQP444="

# Connect
Connect-PnPOnline -Url "https://spjeff.sharepoint.com/sites/Work" -ClientId $clientId -ClientSecret $clientSecret
Get-PnPWeb | Format-Table -AutoSize
