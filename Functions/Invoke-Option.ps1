Function Invoke-Option {
    param (
        [Parameter(Mandatory)][int]$Select,                   #Take user input on choice
        [Parameter(Mandatory)]$Assembly                      #Take array of options
    )
    
    $Select--
    If ($Assembly[$Select].GetType().Name -eq "ScriptBlock") {     #If detected array has functions declared...
        $($Assembly[$Select]).Invoke()                             #Invoke the function
    } Else {                                                            #Anything else (most likely variables) are to be just recalled.
        $($Assembly[$Select])
    } 
}