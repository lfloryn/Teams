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



#Sample 2
Connect-MicrosoftTeams

get-team | Get-Member
Get-Team | select *
Get-Team | select DisplayName

Get-Team

Get-Service | Get-Member
Get-Service | select * -First 1
(Get-Service XboxNetApiSvc).Name
(Get-Service XboxNetApiSvc).Start()


help New-Team -Examples 


$a = "1"
$b = "1"

[int]$a + [int]$b 

$a | gm
$b | gm

<#
DataTypes
https://ss64.com/ps/syntax-datatypes.html

#>


get-team | Get-TeamUser 

get-team -DisplayName Sales | Get-TeamUser 

get-team 


#install BetaTeams

Get-PSRepository
help Register-PSRepository  -ShowWindow

Register-PackageSource -Name PoshTestGallery -Location https://www.poshtestgallery.com/api/v2/ -ProviderName PowerShellGet
Install-Module -Name MicrosoftTeams -RequiredVersion 1.0.22 -Repository PoshTestGallery
Get-Command -Module microsoftteams

Get-Team | select *


# Filtrare 
Get-Team | where displayname -like "sales"
Get-Team | ? displayname -like "it*"
Get-Team | ?  groupid -eq "53bacf9e-5974-4dde-b8f9-512f3b280c6e"


get-team | Where {$_.displayname -like "sales" } 
get-team | ? {$_.displayname -like "sales" -or $_.displayname -like "con*" } 

$teams = get-team | ? {$_.displayname -like "sales"  }

# _________________________________________________________


$teams.displayname

$teams | select * 

Get-Team | Get-TeamChannel 

$teams | Get-TeamUser





help Get-TeamChannelUser -Examples 

$teamsGrID = Get-Team | ? displayname -like "contoso" 

Get-TeamChannel -GroupId $teamsGrID.groupid

Get-TeamChannelUser -GroupId $teamsGrID.groupid -DisplayName "General"

Get-Team | Get-TeamChannel  | ft -AutoSize -Wrap 

Get-TeamChannelUser -GroupId 53bacf9e-5974-4dde-b8f9-512f3b280c6e -DisplayName "General"


$TeamsId=  Get-Team | ? { $_.Description -like "Sales" } 
$TeamsId.groupid

$TeamsId | select * | ft -AutoSize -Wrap

$TeamsId.MailNickName

Get-TeamChannelUser  -GroupId $TeamsId.GroupId -DisplayName "General"

#V2

$TeamsId=  Get-Team | ? { $_.Description -like "*o*" } 

Get-TeamChannelUser  -GroupId $TeamsId.GroupId -DisplayName "General"

#1
$TeamsId | % {

$_.displayname
Get-TeamChannelUser  -GroupId $_.GroupId -DisplayName "General" | select *

}

#2
$collection = Get-Team | ? { $_.Description -like "*o*" } 
foreach ($item in $collection)
{
    $item.displayname
Get-TeamChannelUser  -GroupId $item.GroupId -DisplayName "General" | select *

Add-TeamChannelUser -GroupId $item.GroupId

}


