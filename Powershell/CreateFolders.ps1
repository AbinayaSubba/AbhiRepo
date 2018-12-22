$dirpath="D:\Copy\Copy\Devops\SDLProjects\LearnPowershell"
function test {
param(
 [CmdletBinding()]
 [parameter(mandatory=$true,HelpMessage="Enter the value",Position=1)]
 [int] 
 $getcount
 
)

for($i=1; $i -le $getcount; $i++){
    if(!(Test-Path $dirpath\$i)){
   New-Item -Path $dirpath\$i -ItemType Directory
    }
   else{
       Write-Host "The folder name $i already exist"
   }
}

}