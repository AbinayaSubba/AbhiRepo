function global:getdate(){

    $Date=Get-Date -Format "yyy-MM-dd"
    Write-Output "Todays the Date is" $Date
}


function global:Start-Process{
    # <mandatory parameter and validation
    Param(

    [parameter(position=1,
     Mandatory=$true)]
     [ValidateLength(1,10)]
    [string] 
    $ComputerName,

    [parameter(position=0,
     Mandatory=$true)]
    [int] 
    $Position
    )
    
      Write-Host "The Process is at $Position Position and ProcessName is $ProcessName" 
    
   }

   function global:ValueFromPipeline{
    #<Value from Pipeline>
   param (
    [cmdletbinding()]
    [parameter(Mandatory=$true,
    ValueFromPipeline=$true,
    ValueFromPipelineByPropertyName=$true)]
    [alias("IPAddress")]
    [String[]]
    $ComputerName
   )
   Process{
   Write-Host "ComputerName is $ComputerName"
   }

   }

   function global:rTest{
    #<return function>
       $a = 5
       $b = "This is a test."
       $a
       return $b
    
   }
   [Int32][ValidateRange(0,10)]$number = 5

   function global:validateset {
    #<valid parameter value>
    param(
    [parameter(mandatory=$true)]
    [validateset("low","Average","High")]
    [string[]]
    $Details
   )}
 