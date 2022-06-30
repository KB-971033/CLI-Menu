$functionpath = $PSScriptRoot + "\Functions\"
$functionlist = Get-ChildItem -Path $functionpath -Name
ForEach ($function in $functionlist) {
    . ($functionpath + $function)
}