# onboard-dev-machine
Bootstraping scripts for new computer setup on software development

# Windows machine
Run in powershell shell with Administrator mode
- [Windows package manager](./install-chocolatey.ps1)
- [Windows softwares](install-windows-softwares.ps1)
- [WSL](install-wsl.ps1)

# Linux machine (or WSL)
- powershell `curl -sL https://raw.githubusercontent.com/manhnd1105/onboard-dev-machine/refs/heads/main/install-powershell.sh | sudo bash`
- configure powershell `curl -sL https://raw.githubusercontent.com/manhnd1105/onboard-dev-machine/refs/heads/main/configure-powershell.ps1 | sudo pwsh`
- docker `curl -sL https://raw.githubusercontent.com/manhnd1105/onboard-dev-machine/refs/heads/main/install-docker.sh | sudo bash`
- Azure CLI `curl -sL https://raw.githubusercontent.com/manhnd1105/onboard-dev-machine/refs/heads/main/install-az-cli.sh | sudo bash`
- Azure Powershell`curl -sL https://raw.githubusercontent.com/manhnd1105/onboard-dev-machine/refs/heads/main/install-az-powershell.sh | sudo bash`
- 1password CLI `curl -sL https://raw.githubusercontent.com/manhnd1105/onboard-dev-machine/refs/heads/main/install-1password-cli.sh | sudo bash`
- Terraform `curl -sL https://raw.githubusercontent.com/manhnd1105/onboard-dev-machine/refs/heads/main/install-terraform.sh | sudo bash`
- Platform modules `curl -sL https://raw.githubusercontent.com/manhnd1105/onboard-dev-machine/refs/heads/main/install-platform-modules.ps1 | sudo pwsh`
- Dotnet SDKs `curl -sL https://raw.githubusercontent.com/manhnd1105/onboard-dev-machine/refs/heads/main/install-dotnet-sdks.sh | bash`
- Dotnet intellisense `curl -sL https://raw.githubusercontent.com/manhnd1105/onboard-dev-machine/refs/heads/main/dotnet-intellisense.sh | bash`
- Graphical support `sudo apt install wslu`
- Development tools `sudo apt-get install git nodejs openssl python3 python3-pip`
