Function Clear-Screen {
    Param (
        [Parameter(Position=1)][int32]$Count=1
    )
    
    $CurrentLine = $Host.UI.RawUI.CursorPosition.Y
    $ConsoleWidth = $Host.UI.RawUI.BufferSize.Width
    $i = 1
    for ($i; $i -le $Count; $i++) {
        [Console]::SetCursorPosition(0,($CurrentLine - $i))
        [Console]::Write("{0,-$ConsoleWidth}" -f " ")
    }
    [Console]::SetCursorPosition(0,0)
}
