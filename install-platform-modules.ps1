#!/usr/bin/pwsh
Install-Module -Name Microsoft.PowerShell.SecretManagement -Repository PSGallery
Install-Module -Name Microsoft.PowerShell.SecretStore -Repository PSGallery

# Register the SecretStore as a vault
$vaultName = "platform-kv"
$patSecretKey = "ado-pat"
$vaultPassword = (Read-Host "Setup vault password" | ConvertTo-SecureString -AsPlainText -Force)

Register-SecretVault -Name $vaultName -ModuleName Microsoft.PowerShell.SecretStore -DefaultVault
$storeConfiguration = @{
    Authentication = 'Password'
    PasswordTimeout = 3600 # 1 hour
    Interaction = 'None'
    Password = $vaultPassword
    Confirm = $false
}
Set-SecretStoreConfiguration @storeConfiguration
Unlock-SecretStore $vaultPassword

# Set PAT as secret on vault
$rawPat = (Read-Host "Raw PAT")
$credential = (New-Object System.Management.Automation.PSCredential("user", ($rawPat | ConvertTo-SecureString -AsPlainText -Force)))
Set-Secret -Name $patSecretKey -Vault $vaultName -Secret $credential

# Register the private feed as PS repository
$credentialInfo = ([Microsoft.PowerShell.PSResourceGet.UtilClasses.PSCredentialInfo]::new($vaultName, $patSecretKey))
$org = "manhnguyen0359"
$feedName = "viedoc-feed"
$feedUrl = "https://pkgs.dev.azure.com/$org/_packaging/$feedName/nuget/v3/index.json"

Register-PSResourceRepository -Name $feedName `
    -Uri $feedUrl `
    -Trusted `
    -CredentialInfo $credentialInfo
	
# Install platform module
Install-PsResource -Name "Platform" -Repository $feedName -Scope CurrentUser

Install-Package powershell-yaml
Install-Package BuildHelpers
Import-Module Platform
