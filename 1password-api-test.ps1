$authToken = "<your_connect_token>"
$1PasswordConnectHost = "<your_connect_host>"
$respons = Connect-OPWServer -ConnectionHost $1PasswordConnectHost -BearerToken $authToken

if ($respons.status -eq 200){
   $respons = Get-OPWVaults
   if ($respons.status -eq 200){
       Write-Host $respons.payload.Name
    }
 }
#Clean-UP
Disconnect-OPWServer