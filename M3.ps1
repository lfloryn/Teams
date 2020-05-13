#Connect to skype

Import-Module SkypeOnlineConnector

$Session = New-CsOnlineSession

Import-PSSession $Session

#sesiune
#tmp_dcyrl3lq.ajs 

Get-Command -Module tmp_dcyrl3lq.ajs -Verb get
Get-Command -Module tmp_dcyrl3lq.ajs -Verb start

#migration
Get-CsMeetingMigrationStatus -SummaryOnly  

Start-CsExMeetingMigration 

Get-Command -Module tmp_dcyrl3lq.ajs -Name *mig*
Get-CsTeamsMigrationConfiguration


# Network Testing

Install-Module -Name NetworkTestingCompanion 

Get-Command -Module NetworkTestingCompanion 

Invoke-ToolCreateShortcuts


# Check O365 

$World = Invoke-RestMethod -Uri "https://endpoints.office.com/changes/worldwide/0000000000?clientrequestid=b10c5ed1-bad1-445f-b386-b919946339a7"
$World | sort endpointSetId | ft -AutoSize -Wrap


$Query =  $World | ? endpointSetId -like "11"

$Query
$Query.previous
$Query.current 

$Query | % {

$_.add

}




