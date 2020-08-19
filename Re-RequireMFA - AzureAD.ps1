#Connect to your Msol service
Connect-MsolService -AzureEnvironment AzureCloud

#This will get your user
$User = Get-MSolUser -UserPrincipalName "user@domain.onmicrosoft.com"
#This will have an output IF you have already completed MFA. If you haven't then this won't have any output.
$User.StrongAuthenticationMethods

#Resetting the strong authentication method. This will "Re-Require MFA" from the UPN you selected.
Reset-MsolStrongAuthenticationMethodByUpn -UserPrincipalName "user@domain.onmicrosoft.com"