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

