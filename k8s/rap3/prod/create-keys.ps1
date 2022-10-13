$accountName = "aquaas"
$accountNameBytes = [System.Text.Encoding]::UTF8.GetBytes($accountName)
$accountNameBase64 = [Convert]::ToBase64String($accountNameBytes)
Write-Host "Account Name Base 64: " $accountNameBase64

$accountKey = "OsfvObgLgU04WwbXo8FBXoirDhA7onGKJfn05A0Tx7Fz7dwpwhHwdcTmqJdhkq/eIQrnJ3NP31hBY0Oy8jULYg=="
$accountKeyBytes = [System.Text.Encoding]::UTF8.GetBytes($accountKey)
$accountKeyBase64 = [Convert]::ToBase64String($accountKeyBytes)
Write-Host "Account Name Key 64: " $accountKeyBase64