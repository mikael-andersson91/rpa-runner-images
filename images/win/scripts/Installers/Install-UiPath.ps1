Write-Output "Downloading UiPath"
Install-Binary -Url "https://download.uipath.com/UiPathStudio.msi" -Name "UiPathStudio.msi" -ArgumentList ('ADDLOCAL=DesktopFeature,Studio,Robot,RegisterService,StartupLauncher,JavaBridge,JavaScriptAddOn,EdgeExtension,FirefoxExtension,ChromeExtension CHROME_INSTALL_TYPE=STORE','/Q','/L*V','/norestart')

$UiPathInstallPath = "C:\\PROGRA~1\\UiPath\\Studio"
Add-MachinePathItem -PathItem $UiPathInstallPath