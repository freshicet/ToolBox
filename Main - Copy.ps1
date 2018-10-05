$t = '[DllImport("user32.dll")] public static extern bool ShowWindow(int handle, int state);'
add-type -name win -member $t -namespace native
[native.win]::ShowWindow(([System.Diagnostics.Process]::GetCurrentProcess() | Get-Process).MainWindowHandle, 0)

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

#region begin GUI{

$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = '307,291'
$Form.text                       = "Form"
$Form.TopMost                    = $false

$ipconfig                        = New-Object system.Windows.Forms.Button
$ipconfig.text                   = "ipconfig"
$ipconfig.width                  = 60
$ipconfig.height                 = 30
$ipconfig.location               = New-Object System.Drawing.Point(10,20)
$ipconfig.Font                   = 'Microsoft Sans Serif,10'

$Button2                         = New-Object system.Windows.Forms.Button
$Button2.text                    = "hib"
$Button2.width                   = 60
$Button2.height                  = 30
$Button2.location                = New-Object System.Drawing.Point(84,20)
$Button2.Font                    = 'Microsoft Sans Serif,10'

$Button3                         = New-Object system.Windows.Forms.Button
$Button3.text                    = "Net W"
$Button3.width                   = 60
$Button3.height                  = 30
$Button3.location                = New-Object System.Drawing.Point(157,20)
$Button3.Font                    = 'Microsoft Sans Serif,10'

$Button4                         = New-Object system.Windows.Forms.Button
$Button4.text                    = "Groups"
$Button4.width                   = 60
$Button4.height                  = 30
$Button4.location                = New-Object System.Drawing.Point(234,20)
$Button4.Font                    = 'Microsoft Sans Serif,10'

$Button5                         = New-Object system.Windows.Forms.Button
$Button5.text                    = "Print"
$Button5.width                   = 60
$Button5.height                  = 30
$Button5.location                = New-Object System.Drawing.Point(161,127)
$Button5.Font                    = 'Microsoft Sans Serif,10'

$Button6                         = New-Object system.Windows.Forms.Button
$Button6.text                    = "DISM"
$Button6.width                   = 60
$Button6.height                  = 30
$Button6.location                = New-Object System.Drawing.Point(157,76)
$Button6.Font                    = 'Microsoft Sans Serif,10'

$Button7                         = New-Object system.Windows.Forms.Button
$Button7.text                    = "Ping"
$Button7.width                   = 60
$Button7.height                  = 30
$Button7.location                = New-Object System.Drawing.Point(234,76)
$Button7.Font                    = 'Microsoft Sans Serif,10'

$Button8                         = New-Object system.Windows.Forms.Button
$Button8.text                    = "Task"
$Button8.width                   = 60
$Button8.height                  = 30
$Button8.location                = New-Object System.Drawing.Point(234,127)
$Button8.Font                    = 'Microsoft Sans Serif,10'

$Button9                         = New-Object system.Windows.Forms.Button
$Button9.text                    = "9"
$Button9.width                   = 60
$Button9.height                  = 30
$Button9.location                = New-Object System.Drawing.Point(234,182)
$Button9.Font                    = 'Microsoft Sans Serif,10'

$Button10                        = New-Object system.Windows.Forms.Button
$Button10.text                   = "10"
$Button10.width                  = 60
$Button10.height                 = 30
$Button10.location               = New-Object System.Drawing.Point(234,235)
$Button10.Font                   = 'Microsoft Sans Serif,10'

$Button11                        = New-Object system.Windows.Forms.Button
$Button11.text                   = "11"
$Button11.width                  = 60
$Button11.height                 = 30
$Button11.location               = New-Object System.Drawing.Point(161,182)
$Button11.Font                   = 'Microsoft Sans Serif,10'

$Button12                        = New-Object system.Windows.Forms.Button
$Button12.text                   = "12"
$Button12.width                  = 60
$Button12.height                 = 30
$Button12.location               = New-Object System.Drawing.Point(161,235)
$Button12.Font                   = 'Microsoft Sans Serif,10'

$Button13                        = New-Object system.Windows.Forms.Button
$Button13.text                   = "LastB"
$Button13.width                  = 60
$Button13.height                 = 30
$Button13.location               = New-Object System.Drawing.Point(10,182)
$Button13.Font                   = 'Microsoft Sans Serif,10'

$Button14                        = New-Object system.Windows.Forms.Button
$Button14.text                   = "14"
$Button14.width                  = 60
$Button14.height                 = 30
$Button14.location               = New-Object System.Drawing.Point(84,182)
$Button14.Font                   = 'Microsoft Sans Serif,10'

$Button15                        = New-Object system.Windows.Forms.Button
$Button15.text                   = "Super"
$Button15.width                  = 60
$Button15.height                 = 30
$Button15.location               = New-Object System.Drawing.Point(10,127)
$Button15.Font                   = 'Microsoft Sans Serif,10'

$Button16                        = New-Object system.Windows.Forms.Button
$Button16.text                   = "Control"
$Button16.width                  = 60
$Button16.height                 = 30
$Button16.location               = New-Object System.Drawing.Point(84,127)
$Button16.Font                   = 'Microsoft Sans Serif,10'

$Button17                        = New-Object system.Windows.Forms.Button
$Button17.text                   = "grams"
$Button17.width                  = 60
$Button17.height                 = 30
$Button17.location               = New-Object System.Drawing.Point(10,76)
$Button17.Font                   = 'Microsoft Sans Serif,10'

$Button18                        = New-Object system.Windows.Forms.Button
$Button18.text                   = "SFC"
$Button18.width                  = 60
$Button18.height                 = 30
$Button18.location               = New-Object System.Drawing.Point(84,76)
$Button18.Font                   = 'Microsoft Sans Serif,10'

$Button19                        = New-Object system.Windows.Forms.Button
$Button19.text                   = "19"
$Button19.width                  = 60
$Button19.height                 = 30
$Button19.location               = New-Object System.Drawing.Point(10,235)
$Button19.Font                   = 'Microsoft Sans Serif,10'

$Button20                        = New-Object system.Windows.Forms.Button
$Button20.text                   = "20"
$Button20.width                  = 60
$Button20.height                 = 30
$Button20.location               = New-Object System.Drawing.Point(84,235)
$Button20.Font                   = 'Microsoft Sans Serif,10'

$Form.controls.AddRange(@($ipconfig,$Button2,$Button3,$Button4,$Button5,$Button6,$Button7,$Button8,$Button9,$Button10,$Button11,$Button12,$Button13,$Button14,$Button15,$Button16,$Button17,$Button18,$Button19,$Button20))

#region gui events {
$ipconfig.Add_Click({ ipconfig })
$ipconfig.Add_MouseHover({ ipconfig_Tip })

$Button2.Add_Click({ hib })
$Button2.Add_MouseHover({ hib_Tip  })

$Button3.Add_Click({ Net_work })
$Button3.Add_MouseHover({ Net_work_Tip })

$Button4.Add_Click({ Use_Groups })
$Button4.Add_MouseHover({ Use_Groups_Tip })

$Button5.Add_Click({ control_printer })
$Button5.Add_MouseHover({ control_printer_Tip })

$Button6.Add_Click({ DISM })
$Button6.Add_MouseHover({ DISM_Tip })

$Button7.Add_Click({ Ping })
$Button7.Add_MouseHover({ Ping_Tip })

$Button8.Add_Click({ Task })
$Button8.Add_MouseHover({ Task_Tip })

$Button13.Add_Click({ Last_Boot })
$Button13.Add_MouseHover({ Last_Boot_Tip })

$Button15.Add_Click({ Super })
$Button15.Add_MouseHover({ Super_Tip })

$Button16.Add_Click({ control })
$Button16.Add_MouseHover({ control_Tip })

$Button17.Add_Click({ grams })
$Button17.Add_MouseHover({ grams_Tip })

$Button18.Add_Click({ sfc })
$Button18.Add_MouseHover({ sfc_Tip })



#endregion events }

#endregion GUI }


#Logic code
function ipconfig {
    Set-Clipboard -Value "ipconfig"}
function ipconfig_Tip {
   $text = "test"
      $tooltip1.SetToolTip($ipconfig, $text)
   }

function hib {
   $prog="cmd.exe"
   $params=@("/C";"powercfg.exe /h off")
   Start-Process -Verb runas $prog $params
    }
function hib_Tip {
   $text = "Turn off hibernation"
   $tooltip1.SetToolTip($Button2, $text)
   }

function Net_work {
    ncpa.cpl}
function Net_work_Tip {
   $text = "Opens Network settings"
   $tooltip1.SetToolTip($Button3, $text)
   }

function Task {
    Taskmgr}
function Task_Tip {
   $text = "Opens Task Manager"
   $tooltip1.SetToolTip($Button8, $text)
   }

function Use_Groups {
    Lusrmgr.msc}
function Use_Groups_Tip {
   $text = "Opens Group and Local Users"
   $tooltip1.SetToolTip($Button4, $text)
   }

function grams {
    appwiz.cpl }
function grams_Tip {
   $text = "Opens Programs and Features"
   $tooltip1.SetToolTip($Button17, $text)
   }

function Ping {
start powershell {./ping.ps1}
 }
function Ping_Tip {
   $text = "Open a ping box"
   $tooltip1.SetToolTip($Button7, $text)
   }

function Last_Boot {
	Start-Process PowerShell {Get-CimInstance -ClassName win32_operatingsystem | select csname, lastbootuptime | out-host; read-host}
 }
function Last_Boot_Tip {
   $text = "Show last reboot"
   $tooltip1.SetToolTip($Button13, $text)
   }


function control {
start powershell {control panel}
 }
function control_Tip {
   $text = "Open a control panel"
   $tooltip1.SetToolTip($Button16, $text)
   }

function control_printer {
start powershell {control printers}
 }
function control_printer_Tip {
   $text = "Open a Devices and Printers panel"
   $tooltip1.SetToolTip($Button5, $text)
   }


function sfc {
   $prog="cmd.exe"
   $params=@("/C";"sfc /scannow")
   Start-Process -Verb runas $prog $params }
function sfc_Tip {
   $text = "Open a sfc scan in cmd (admin mode)"
   $tooltip1.SetToolTip($Button18, $text)
   }

function Super {
   Start-Process powershell -Verb runAs {Stop-Service -Force -Name "SysMain"; Set-Service -Name "SysMain" -StartupType Disabled} }
function Super_Tip {
   $text = "Disable SuperFetch in Windows"
   $tooltip1.SetToolTip($Button15, $text)
   }

function DISM {
    $prog="cmd.exe"
$params=@("/C";"DISM /Online /Cleanup-Image /ScanHealth")
Start-Process -Verb runas $prog $params }
function DISM_Tip {
   $text = "Use the DISM command with the /ScanHealth switch to scan the Windows image for any corruption. Unlike the /CheckHealth, the /ScanHealth switch can take up to 10 minutes to complete the process."
   $tooltip1.SetToolTip($Button6, $text)
   }

$tooltip1 = New-Object System.Windows.Forms.ToolTip
[void]$Form.ShowDialog()