# onboard-dev-machine
Bootstraping scripts for new computer setup on software development

# Windows machine
Run in powershell shell with Administrator mode
```powershell
# chocolatey
Invoke-Expression (Invoke-WebRequest -Uri "https://raw.githubusercontent.com/manhnd1105/onboard-dev-machine/refs/heads/main/install-chocolatey.ps1").Content

# development tools
$tools = @(
  obsidian
  smartgit
  postman
  7zip
  choco-cleaner
  vscode
  notepadplusplus
  telegram
  microsoft-windows-terminal
  openjdk  # to use smartgit in WSL
)
Invoke-Expression (Invoke-WebRequest -Uri "https://raw.githubusercontent.com/manhnd1105/onboard-dev-machine/refs/heads/main/install-windows-softwares.ps1 $tools").Content

# enable hyper-v
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

# wsl
Invoke-Expression (Invoke-WebRequest -Uri "https://raw.githubusercontent.com/manhnd1105/onboard-dev-machine/refs/heads/main/install-wsl.ps1").Content
Invoke-Expression (Invoke-WebRequest -Uri "https://raw.githubusercontent.com/manhnd1105/onboard-dev-machine/refs/heads/main/configure-wsl.ps1").Content

```

# Linux machine (or WSL)
Run in default bash shell
```bash
# configure wsl
curl -sL https://raw.githubusercontent.com/manhnd1105/onboard-dev-machine/refs/heads/main/configure-wsl-disable-windows-path.sh | bash

# configure env profiles bootstrap location at `~/profile.d/`
curl -sL https://raw.githubusercontent.com/manhnd1105/onboard-dev-machine/refs/heads/main/configure-env-profiles.sh | bash

# powershell
curl -sL https://raw.githubusercontent.com/manhnd1105/onboard-dev-machine/refs/heads/main/install-powershell.sh | sudo bash
curl -sL https://raw.githubusercontent.com/manhnd1105/onboard-dev-machine/refs/heads/main/configure-powershell.ps1 | sudo pwsh

# docker
curl -sL https://raw.githubusercontent.com/manhnd1105/onboard-dev-machine/refs/heads/main/install-docker.sh | sudo bash

# az cli
curl -sL https://raw.githubusercontent.com/manhnd1105/onboard-dev-machine/refs/heads/main/install-az-cli.sh | sudo bash

# az pwsh
curl -sL https://raw.githubusercontent.com/manhnd1105/onboard-dev-machine/refs/heads/main/install-az-powershell.ps1 | pwsh

# 1password cli
curl -sL https://raw.githubusercontent.com/manhnd1105/onboard-dev-machine/refs/heads/main/install-1password.sh | sudo bash

# terraform
curl -sL https://raw.githubusercontent.com/manhnd1105/onboard-dev-machine/refs/heads/main/install-terraform.sh | sudo bash

# dotnet
curl -sL https://raw.githubusercontent.com/manhnd1105/onboard-dev-machine/refs/heads/main/install-dotnet-sdks.sh | bash
curl -sL https://raw.githubusercontent.com/manhnd1105/onboard-dev-machine/refs/heads/main/dotnet-intellisense.sh | bash

# interop support
sudo apt install wslu

# development tools
sudo apt-get install git nodejs openssl python3 python3-pip

```

