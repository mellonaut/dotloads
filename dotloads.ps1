# Get admin creds via UAC popup
Set-ExecutionPolicy Bypass -Scope Process -Force; Get-Credential

# Download and execute Sysmon installation script with custom configuration
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/mellonaut/sysmon/main/onboard_sysmon.ps1'))

# Download and execute Chocolatey installation script
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Download and execute Boxstarter installation script
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://boxstarter.org/bootstrapper.ps1')); Get-Boxstarter -Force

# variant
# powershell -exec bypass -c "(New-Object Net.WebClient).Proxy.Credentials=[Net.CredentialCache]::DefaultNetworkCredentials;iwr('https://raw.githubusercontent.com/mellonaut/sysmon/main/onboard_sysmon.ps1')|iex"

# # Way to get creds and export as global var
# $creds = Get-Credential
# Path\to\script.ps1

# Inside script.ps1, something like start-process calc -credential $global:creds