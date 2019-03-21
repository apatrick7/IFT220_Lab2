# brutforce script to make some organizational units

# you need to change "DC=ad,DC=APATRIC7,DC=LAN" to match your domain and update the ST initials to match or remove them

Write-Host -ForegroundColor yellow "Creating OUs"
New-ADOrganizationalUnit -Name AP_Computers -Path "DC=AD,DC=APATRIC7,DC=LAN" -Description "AP Computers"
 New-ADOrganizationalUnit -Name Workstations -Path "OU=AP_Computers,DC=AD,DC=APATRIC7,DC=LAN"
  New-ADOrganizationalUnit -Name President -Path "OU=Workstations,OU=AP_Computers,DC=AD,DC=APATRIC7,DC=LAN"
  New-ADOrganizationalUnit -Name Finance -Path "OU=Workstations,OU=AP_Computers,DC=AD,DC=APATRIC7,DC=LAN"
  New-ADOrganizationalUnit -Name HR -Path "OU=Workstations,OU=AP_Computers,DC=AD,DC=APATRIC7,DC=LAN"
  New-ADOrganizationalUnit -Name Sales -Path "OU=Workstations,OU=AP_Computers,DC=AD,DC=APATRIC7,DC=LAN"
  New-ADOrganizationalUnit -Name Legal -Path "OU=Workstations,OU=AP_Computers,DC=AD,DC=APATRIC7,DC=LAN"
  New-ADOrganizationalUnit -Name IT -Path "OU=Workstations,OU=AP_Computers,DC=AD,DC=APATRIC7,DC=LAN"
 New-ADOrganizationalUnit -Name Servers -Path "OU=AP_Computers,DC=AD,DC=APATRIC7,DC=LAN"
  New-ADOrganizationalUnit -Name Hyper-V -Path "OU=Servers,OU=AP_Computers,DC=AD,DC=APATRIC7,DC=LAN"
  New-ADOrganizationalUnit -Name Exchange -Path "OU=Servers,OU=AP_Computers,DC=AD,DC=APATRIC7,DC=LAN"
New-ADOrganizationalUnit -Name AP_Groups -Path "DC=AD,DC=APATRIC7,DC=LAN" -Description "High Level Security Groups"
New-ADOrganizationalUnit -Name AP_Privileged_Accounts -Path "DC=AD,DC=APATRIC7,DC=LAN" -Description "Privileged Accounts"
New-ADOrganizationalUnit -Name AP_Users -Path "DC=AD,DC=APATRIC7,DC=LAN" -Description "Non-Privileged Accounts"
Write-Host -ForegroundColor yellow "Done creating OUs"
Write-Host -ForegroundColor yellow ""

Write-Host -ForegroundColor yellow "Creating groups based on department"
New-ADGroup -GroupCategory Security -GroupScope Global -Name President -Path "OU=AP_Groups,DC=AD,DC=APATRIC7,DC=LAN"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Finance -Path "OU=AP_Groups,DC=AD,DC=APATRIC7,DC=LAN"
New-ADGroup -GroupCategory Security -GroupScope Global -Name HR -Path "OU=AP_Groups,DC=AD,DC=APATRIC7,DC=LAN"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Sales -Path "OU=AP_Groups,DC=AD,DC=APATRIC7,DC=LAN"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Legal -Path "OU=AP_Groups,DC=AD,DC=APATRIC7,DC=LAN"
New-ADGroup -GroupCategory Security -GroupScope Global -Name IT -Path "OU=AP_Groups,DC=AD,DC=APATRIC7,DC=LAN"
# Create a Leadership group for the President and VPs to access restricted a file share
New-ADGroup -GroupCategory Security -GroupScope Global -Name Leadership -Path "OU=AP_Groups,DC=AD,DC=APATRIC7,DC=LAN"
Write-Host -ForegroundColor yellow "Done creating groups"
Write-Host -ForegroundColor yellow ""
