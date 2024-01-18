function convert {
    param (
        $value,
        $tarsys=2,
        $result=@()
    )
    $result += $value % $tarsys
    $newval = [int][Math]::Floor($value / $tarsys)
    if($newval -ne 0) {
        convert -value $newval -tarsys $tarsys -result $result
    } else {
        [array]::Reverse($result)
        return $result
    }
    
}

Write-Host $(convert -value 9 -tarsys 8)
