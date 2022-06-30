Function Update-Menu {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]$MenuTitle,                                               #Take user input on 
        [Parameter(Mandatory)][int]$Highlight,                                          #Take user input on highlighted item
        [Parameter()]$Divider = "=",                                                    #Take character user wants to use as a divider, default is =
        [Parameter(Mandatory)]$MenuItems                                                #Take array of options
    )

    $dividerChar = $Divider *$MenuTitle.Length                                    
    $Highlight--                                                                       #Decrease option by one to match item display number
    Write-Host $MenuTitle`n$dividerChar -ForegroundColor White -BackgroundColor Black                                #Write title and divider
    Foreach ($item in $MenuItems) {                                                 
        If ($item -eq $MenuItems[$Highlight]) {                                        #If item in array matches the chosen option, print it with 'Selected' formatting
            Write-Host $item -ForegroundColor Black -BackgroundColor White
        } Else {                                                                    #Otherwise, print it with 'Unselected' formatting
            Write-Host $item -ForegroundColor White -BackgroundColor Black
        }
    }
}