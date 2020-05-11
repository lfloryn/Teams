# Powershell Teams

$PSVersionTable

Find-Module -Name MicrosoftTeams

Get-PSRepository

Install-Module -Name MicrosoftTeams -Force -Scope AllUsers 

Get-Module -ListAvailable 

Get-Command -Module MicrosoftTeams

Connect-MicrosoftTeams

help Connect-MicrosoftTeams -ShowWindow 

help New-Team  -ShowWindow 


# Powershell Skype /Teams

<#
Download and Install : https://www.microsoft.com/en-us/download/details.aspx?id=39366

Visual C++ Download: https://aka.ms/vs/16/release/vc_redist.x64.exe

SUport Visual C++: https://support.microsoft.com/en-us/help/2977003/the-latest-supported-visual-c-downloads

#>

Import-Module SkypeOnlineConnector

$Session = New-CsOnlineSession

Import-PSSession $Session

Get-Command -Module <Name> # Module name
#For example: Get-Command -Module tmp_f1kjmla4.h1v

Get-Command -Module tmp_hzspxxo2.vd4
Get-Command -Module tmp_hzspxxo2.vd4 | measure

Get-Help Get-CsTeamsMessagingPolicy

Get-command 
Get-help 
Get-help about_*
Get-help about_ForEach -ShowWindow 



Get-Command *json*

Get-Team | ConvertTo-Json >> C:\Alin\Teams\jsonsample.txt
ise C:\Alin\Teams\jsonsample.txt 

$date = Get-Content C:\Alin\Teams\jsonsample.txt 
$date | ConvertFrom-Json | ft 