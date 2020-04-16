## For Windows Machine
We need to run the following on each windows machine:

```
$url = "https://raw.githubusercontent.com/ansible/ansible/devel/examples/scripts/ConfigureRemotingForAnsible.ps1"
$file = "$env:temp\ConfigureRemotingForAnsible.ps1"
(New-Object -TypeName System.Net.WebClient).DownloadFile($url, $file)
powershell.exe -ExecutionPolicy ByPass -File $file
winrm enumerate winrm/config/Listener
```

### Notes
For the WOW2 you do need to enable the local administrator account and reset the password.

For the ASA you need to login to the ASA and copy

https://visibility.amp.cisco.com/investigate?id=a5dbdebb-5c38-4a28-a478-80ced7c43f18
