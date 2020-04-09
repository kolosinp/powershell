$Cred = Get-Credential
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://ps.outlook.com/PowerShell-LiveID?PSVersion=5.1.18362.628 -Credential $Cred -Authentication Basic -AllowRedirection
Import-PSSession $Session
$address_for_search='email@company.com'   
Get-Mailbox | Where-Object {$_.EmailAddresses -like $address_for_search } | Format-List Identity, EmailAddresses #-IncludeInactiveMailbox -Identity * 

Remove-PSSession $Session
