$ProductNames = Get-ChildItem -Filter "*.md" | ForEach-Object {$_.Name.SubString(0, $_.Name.Length - 3)}

$Output = @{}

foreach ($Product in $ProductNames) {
    $Output[$Product] = @()
    $MdLines = Get-Content "$($Product).md"

    $LineNumbers = Select-String "## [0-9]+\." "$($Product).md" | ForEach-Object {$_."LineNumber"-1}
    $Groups = $LineNumbers | ForEach-Object {$MdLines[$_]}

    foreach ($GroupName in $Groups) {
        $Group = @{}
        $Group.Number = $GroupName.Split(".")[0].SubString(3)
        $Group.Title = $GroupName.Split(".")[1].SubString(1)
        $LineNumbers = Select-String "#### MS\.[a-zA-Z]+\.$($Group.Number)\." "$($Product).md" | ForEach-Object {$_."LineNumber"}
        $Group.Controls = @()
        $Group.Controls += ($LineNumbers | ForEach-Object {[string]$MdLines[$_]})
        $Output[$Product] += $Group
    }
}

ConvertTo-Json $Output -Depth 3 # TODO save as file