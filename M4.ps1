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


#New Team
New-Team -DisplayName Sales -Visibility Private -Owner AlexW@M365x318721.OnMicrosoft.com -Description "This is a team for the Sales Department."


#To create a team from a template, use the New-Team cmdlet with the -Template parameter:
New-Team -DisplayName “CompSci 101” -Description “Official team for theCompSci 101 Class.” -Template EDU_Class

#sales4@M365x318721.onmicrosoft.com to a private team, you run the following cmdlets:

#Get-UnifiedGroup need Exchange Module

Install-Module -Name ExchangeOnlineManagement
Import-Module ExchangeOnlineManagement; Get-Module ExchangeOnlineManagement

Get-Command -Module ExchangeOnlineManagement

$UserCredential = Get-Credential
Connect-ExchangeOnline -Credential $UserCredential -ShowProgress $true

$group = Get-UnifiedGroup -Identity sales4@M365x318721.onmicrosoft.com
New-Team -GroupID $group.ExternalDirectoryObjectId -Visibility Private -Owner admin@M365x318721.OnMicrosoft.com

Get-EXORecipient

