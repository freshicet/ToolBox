#        Domain Main Script 


function Show-Menu
{
     param (
           [string]$Title = 'My Menu'
     )
     cls
     Write-Host "================ $Title ================"
     
     Write-Host "1: Press '1' for Computer Name"
     Write-Host "2: Press '2' for Add this computer to the Domain"
     Write-Host "3: Press '3' for Add the computer to the Domain(Change the name)"
     Write-Host "Q: Press 'Q' to quit."
}

do
{
     Show-Menu
     $input = Read-Host "Please make a selection"
     switch ($input)
     {
           '1' {
                cls
                'You chose option #1'
		            $env:computername

              }
           '2' {
   
               cls
                'You chose option #2'
                    Start powershell -Verb runas {
                    $DomainName = Read-Host "Please enter the Domain:"
                    Add-Computer –DomainName $DomainName –Credential (Get-Credential)}
                    
           } 


           '3' {
                cls
                'You chose option #3'
                 Start powershell -Verb runas {
                 $NewComputer = Read-Host "Enter the new computer name:"
                 Rename-Computer -NewName $NewComputer
                 $DomainName = Read-Host "Please enter the Domain"
                 Add-Computer –DomainName $DomainName –Credential (Get-Credential)}
           } 

           'q' {
                return
           }
     }
     pause
}
until ($input -eq 'q')