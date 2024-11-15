$Softwares = @(
  obsidian
  smartgit
  postman
  7zip
  choco-cleaner
  vscode
  notepadplusplus
  telegram
  microsoft-windows-terminal
) -join " "
choco install $Softwares
