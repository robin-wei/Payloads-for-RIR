Backstab.exe -k -n sfc.exe   
There are a few erros when we complie the source code of Backstab downloaded from https://github.com/Yaxser/Backstab, fixed the errors and complied successfully.
This is to kills CSE core process, and CSE core process sfc.exe will restart automatically at next heartbeat.
CSE can generate "Kill Antimalware Processes with Backstab" event and contribute it to XDR to generate and incident. 
Escalation_to_run_Backstab.ps1 is powershell to escalate the privilege to run Backstab.exe.

-----------------------------------
Akagi64.exe 33 C:\Windows\System32\cmd.exe
The source code is on https://github.com/hfiref0x/UACME, I compiled to create the payload. This 33 leverages exploit of fodhelper.exe to escalate privilege for cmd.exe.
UACbypass.ps1 is powershell to do this easily.
