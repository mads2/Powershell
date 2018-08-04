function Lower-Brightness {
    $monitor = Get-WmiObject -ns root/wmi -class wmiMonitorBrightNessMethods
    $lap = 60000 
    $brightness = 80
    For ($i=0; $i -lt 11; $i++){
        $monitor.WmiSetBrightness(80,$brightness)
        $brightness = $brightness  - 5
        Start-Sleep -Milliseconds $lap
    }
}

function PopUp-Message {
    $wshell = New-Object -ComObject Wscript.Shell
    $wshell.Popup("Hora de dormir?!",0,"Done",0x0)
}

Lower-Brightness
PopUp-Message
