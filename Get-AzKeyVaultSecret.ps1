$secret = Get-AzKeyVaultSecret -VaultName 'KVjt' -Name 'jatranTestSecret'
Write-Host "Secret Value is:" $secret.SecretValueText

$secret = Get-AzKeyVaultSecret -VaultName 'KVjt' -Name 'jatranTestSecret'
$SecurePassword = $secret.SecretValue
$Password = [System.Net.NetworkCredential]::new("", $SecurePassword).Password