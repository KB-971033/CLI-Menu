<#
.SYNOPSIS
    Capture and return the pressed key value.
.DESCRIPTION
    Call this function to listen to the next key press, then return its Virtual Key Code.
    Use this for single-key navigation. It treats function keys (e.g. Shift) as individual keys.
.PARAMETER ReturnValue
    Write the numerical value of the key to console.
.INPUTS
    System.KeyInfo
.OUTPUTS
    System.Int32
.Example
    Get-Key
.Example
    Get-Key -ReturnValue
#>
Function Get-Key {
    param (
        [Parameter()][switch]$ReturnValue
    )

    $v = $Host.UI.RawUI.ReadKey().VirtualKeyCode
    If ($ReturnValue) {
        Write-Output " : Key pressed " $v" : Value of the key"
    } Else {
        $v
    }
}