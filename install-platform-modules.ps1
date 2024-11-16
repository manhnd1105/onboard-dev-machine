#!/usr/bin/pwsh
[CmdletBinding()]
param (
    [Parameter(Mandatory = $true)]
    [string] $Pat,
)
    
# Use a local safe keyvault to store ADO PAT
Install-Module -Name Microsoft.PowerShell.SecretManagement -Repository PSGallery
Install-Module -Name Microsoft.PowerShell.SecretStore -Repository PSGallery

$VaultName = "platform-kv"
$PatSecretKey = "ado-pat"
Register-SecretVault -Name $VaultName -ModuleName Microsoft.PowerShell.SecretStore -DefaultVault
Set-Secret -Name $PatSecretKey -SecureStringSecret $Pat -Vault $VaultName

# Connect to the platform feed
Register-PSResourceRepository `
	-Name "viedoc-feed" `
	-Uri "https://pkgs.dev.azure.com/manhnguyen0359/_packaging/viedoc-feed/nuget/v3/index.json" `
	-Trusted `
	-CredentialInfo ([Microsoft.PowerShell.PSResourceGet.UtilClasses.PSCredentialInfo]::new($VaultName, $PatSecretKey))
 
Install-PSResource -Name "Platform" -Repository "viedoc-feed" -Credential (New-Object System.Management.Automation.PSCredential($pat))
