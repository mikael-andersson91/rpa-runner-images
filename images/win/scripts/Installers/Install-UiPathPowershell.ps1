# Set TLS1.2
[Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor "Tls12"


Write-Host "Install UiPath.Powershell..."
Install-PackageProvider -Name NuGet -Force
Register-PSRepository -Name UiPath -SourceLocation https://www.myget.org/F/uipath-dev/api/v2
Install-Module -Repository UiPath -Name UiPath.Powershell -Force
Import-Module UiPath.PowerShell

Install-PackageProvider -Name NuGet -Force
Register-PSRepository -Name UiPath-Official -SourceLocation https://uipath.pkgs.visualstudio.com/Public.Feeds
Install-Module UiPath.CLI
Write-Host "Finished installing UiPath.Powershell..."