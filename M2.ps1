# Powershell Clasification

Find-Module AzureADPreview

# nu AzureAD / daca exista delete
Find-Module AzureAD

Install-Module AzureADPreview  -Repository PSGallery

Get-Command -Module AzureADPreview

Connect-AzureAD 

$Template = Get-AzureADDirectorySettingTemplate | Where {$_.DisplayName -eq "Group.Unified"}
$Template | fl *

#Check if data exist !

if (!($Setting=Get-AzureADDirectorySetting|Where {$_.TemplateId -eq $Template.Id})) {$Setting = $Template.CreateDirectorySetting()}

$Setting.Values | select *

# Add

$Setting["ClassificationList"] = "Standard, Internal, Confidential"

# Assiciate meaningful descriptions to each classification, by using the following cmdlet:

$Setting["ClassificationDescriptions"] = "Standard: General communication, Internal: Company internal data, Confidential: Data that has regulatory requirements"

#To verify the classifications and calssificationdescriptions values, run the following cmdlet:

$Setting.Values

# As soon as the "Setting" variable attributes contain the desired values, write back the settings object to your directory. Use the # following cmdlet, to create a new "Group.Unified" Azure AD configuration with the custom settings:

New-AzureADDirectorySetting -DirectorySetting $Setting

# Note: Since this is a new tenant, there's no directory settings object in the tenant yet. You need to use New-AzureADDirectorySetting to # create a directory settings object at the first time.
# If there's an existing directory settings object, you will need to use following cmdlet to update the directory setting in Azure Active # directory:

Set-AzureADDirectorySetting -Id (Get-AzureADDirectorySetting | where -Property DisplayName -Value "Group.Unified" -EQ).id -DirectorySetting $Setting







