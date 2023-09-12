# Install WinGet
$progressPreference = 'silentlyContinue'
Write-Information "Downloading WinGet and its dependencies..."
Invoke-WebRequest -Uri https://aka.ms/getwinget -OutFile Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
Invoke-WebRequest -Uri https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx -OutFile Microsoft.VCLibs.x64.14.00.Desktop.appx
Invoke-WebRequest -Uri https://github.com/microsoft/microsoft-ui-xaml/releases/download/v2.7.3/Microsoft.UI.Xaml.2.7.x64.appx -OutFile Microsoft.UI.Xaml.2.7.x64.appx
Add-AppxPackage Microsoft.VCLibs.x64.14.00.Desktop.appx
Add-AppxPackage Microsoft.UI.Xaml.2.7.x64.appx
Add-AppxPackage Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle

Remove-Item -Path Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
Remove-Item -Path Microsoft.VCLibs.x64.14.00.Desktop.appx
Remove-Item -Path Microsoft.UI.Xaml.2.7.x64.appx
 
# Install Gt
winget install --id Git.Git -e --source winget

# Install NodeJS
winget install -e --accept-source-agreements --accept-package-agreements --id OpenJS.NodeJS -v 18.11.0

# Install VSC
winget install -e --accept-source-agreements --accept-package-agreements --id Microsoft.VisualStudioCode