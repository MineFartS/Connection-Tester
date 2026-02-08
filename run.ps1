
$host.ui.RawUI.WindowTitle = "Connection Tester"

Clear-Host
Write-Host ''

$hostname = Read-Host "Hostname"

while ($true) {

    Clear-Host
    Write-Host ''

    Write-Host `
        "$hostname - " `
        -NoNewline 
    
    Write-Host `
        "Testing ..." `
        -ForegroundColor Cyan `
        -NoNewline

    $online = Test-Connection `
        -ComputerName $hostname `
        -Count 1 `
        -Quiet

    Write-Host `
        "`r                                                                      " `
        -NoNewline 

    Write-Host `
        "`r$hostname - " `
        -NoNewline 

    if ($online) {

        Write-Host `
            "Online" `
            -ForegroundColor Green

    } else {

        Write-Host `
            "Offline" `
            -ForegroundColor Red

    }

    timeout.exe 5

}