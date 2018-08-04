function Lower-Brightness {
    $monitor = Get-WmiObject -ns root/wmi -class wmiMonitorBrightNessMethods
    $lap = 1000 
    $brightness = 80
    For ($i=0; $i -lt 11; $i++){
        $monitor.WmiSetBrightness(80,$brightness)
        $brightness = $brightness  - 5
        Start-Sleep -Milliseconds $lap
    }
}

Lower-Brightness
