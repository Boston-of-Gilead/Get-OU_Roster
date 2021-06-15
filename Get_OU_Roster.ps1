#Gets all users in OU
$OUpath = 'OU=,DC=,DC=,DC=local' 
$ExportPath = 'C:\path_to\users_in_ou2.csv' 
Get-ADUser -Filter * -SearchBase $OUpath | Select-object Name,UserPrincipalName,EmployeeNumber | Export-Csv -NoType $ExportPath
