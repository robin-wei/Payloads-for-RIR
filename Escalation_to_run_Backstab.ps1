$PSLocation = "$env:SystemRoot\System32\WindowsPowerShell\v1.0\powershell.exe"
$currentUser = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
if (-not $currentUser.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Start-Process -FilePath $PSLocation -ArgumentList '-NoExit', '-File', $myinvocation.MyCommand.Definition -Verb RunAs -WorkingDirectory 'C:\Users\Public'
    exit
}

Set-Location 'C:\Users\Public'
.\Backstab.exe -k -n sfc.exe
