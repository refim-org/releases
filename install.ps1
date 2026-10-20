# Installs Refim on Windows - into your user folder, no admin rights needed.
#
#   irm https://raw.githubusercontent.com/refim-org/releases/main/install.ps1 | iex
#
# Refim Coach instead:  $env:REFIM_APP = 'coach'; irm https://raw.githubusercontent.com/refim-org/releases/main/install.ps1 | iex
# Afterwards Refim keeps itself up to date.

$ErrorActionPreference = 'Stop'
$ProgressPreference = 'SilentlyContinue'

$app = if ($env:REFIM_APP -eq 'coach') { 'coach' } else { 'refim' }
$name = if ($app -eq 'coach') { 'Refim Coach' } else { 'Refim' }
$exe = if ($app -eq 'coach') { 'refim_companion.exe' } else { 'refim.exe' }

$manifest = Invoke-RestMethod "https://raw.githubusercontent.com/refim-org/releases/main/latest.json"
$build = $manifest.$app.windows
if (-not $build) { throw "No $name build for Windows yet." }

if (Get-Process -Name ([IO.Path]::GetFileNameWithoutExtension($exe)) -ErrorAction SilentlyContinue) {
  throw "$name is running. Quit it first (tray icon: right click, Quit), then run this again."
}

Write-Host "Downloading $name $($build.version) ..."
$zip = Join-Path $env:TEMP "refim-$([guid]::NewGuid()).zip"
Invoke-WebRequest $build.url -OutFile $zip -UseBasicParsing
$hash = (Get-FileHash $zip -Algorithm SHA256).Hash.ToLower()
if ($hash -ne $build.sha256) { Remove-Item $zip; throw "Checksum does not match - download aborted." }
Unblock-File $zip

$dir = Join-Path $env:LOCALAPPDATA "Programs\$name"
if (Test-Path $dir) { Remove-Item $dir -Recurse -Force }
Expand-Archive $zip -DestinationPath $dir -Force
Remove-Item $zip

$shortcut = (New-Object -ComObject WScript.Shell).CreateShortcut(
  (Join-Path ([Environment]::GetFolderPath('Programs')) "$name.lnk"))
$shortcut.TargetPath = Join-Path $dir $exe
$shortcut.WorkingDirectory = $dir
$shortcut.Save()

Write-Host "$name $($build.version) installed in $dir - starting."
Start-Process (Join-Path $dir $exe)
