#attempting to disable defender again since it may not have worked correctly the first time
echo Disabling Defender
Set-MpPreference -DisableRealtimeMonitoring:$true
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender" -Name "DisableAntiSpyware" -PropertyType DWord -Value 1


Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
IEX (IWR 'https://raw.githubusercontent.com/redcanaryco/invoke-atomicredteam/master/install-atomicredteam.ps1' -UseBasicParsing);
Install-AtomicRedTeam -Force
Install-AtomicRedTeam -getAtomics -Force