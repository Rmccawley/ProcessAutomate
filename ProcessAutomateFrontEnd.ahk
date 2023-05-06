#Requires AutoHotkey v2.0
;Ctrl - ^
;Alt - !
;Shift - +
;Win - #
#SingleInstance Force

#Include "Pages\WebsitePage.ahk"

SetTitleMatchMode 2
SetKeyDelay 200
#HotIfTimeout 100
CurrentPage:= WebsitePage()
CurrentPage.Buttons()

;===================================================
;  GUI and Settings
;===================================================
#MaxThreadsPerHotkey 2
global guiActive:=0
TraySetIcon("Thumbnails\Facebook.png",, 1)


$`::{   
    If Not WinExist("Process Automate"){
        global MainWindow := Gui()
        MainWindow.Title := "Process Automate"

        global Hidden1:=0
        global Hidden2:=0
        settitlematchmode 2
        CoordMode "Mouse", "Screen"
        
        SysGet(80) ;Mon3, Monitor, 3
        ; Mon3Right := Mon3Right - Mon3Left
        ; Mon3Bottom := Mon3Bottom - Mon3Top
        
        MainWindow.Hide
        ; MainWindow.BackColor:= "White"
        
        SetWorkingDir "Thumbnails"

        ;open all tabs in chrome
        Button0:= MainWindow.AddButton("x12 y9 w90 h90", "Button0")
        Button1:= MainWindow.AddButton("x12 y200 w90 h90", "Button1")

        ;Button0.OnEvent("Click", OpenGoogle)  ; Call OpenGoogle when clicked.

        ; global Picture0:= MainWindow.AddPicture("x62 y129 w110 h100 Border" Last() "Hidden", "542993-200.png")
        global Picture1:= MainWindow.AddPicture("x192 y129 w100 h100 Border vButton2" "Hidden", "576656-200.png")
        ; global Button3:= MainWindow.AddPicture("x312 y129 w110 h100 Border vButton3" Play() "Hidden", "576660-200.png")
        ; global Button4:= MainWindow.AddPicture("x442 y129 w110 h100 Border vButton4" Next() "Hidden", "S878676-200.png")
        ; global Button5:= MainWindow.AddPicture("x62 y279 w110 h80 Border"  Mute() "Hidden", )
        ; global Button6:= MainWindow.AddPicture("x192 y279 w100 h80 Border"  VolDown() "Hidden", )
        ; global Button7:= MainWindow.AddPicture("x312 y279 w100 h80 Border"  VolUp() "Hidden", )
        ; global Button8:= MainWindow.AddPicture("x712 y129 w50 h60 Border"  Pandora() "Hidden ", )
        ; global Button9:= MainWindow.AddPicture("x792 y129 w50 h60 Border"  YT() "Hidden", )

        SetWorkingDir A_ScriptDir

        MainWindow.Show("w400 h300 Center")
    }
    Else{
        MainWindow.Destroy
    }
    Return
}
 
Last(){
    HotIf WinExist("ahk_class Youtube")
    Send "{Media_PREV}"
    HotIf WinExist
Return
}
 
; Pause(){
;     Send "{Media_Play_Pause}"
; Return
; }
 
; Play(){
;     HotIf WinExist("ahk_class Youtube")
;     Send "{Media_Play_Pause}"
;     HotIf WinExist
; Return
; }
 
; Mute(){
;     HotIf WinExist("ahk_class Youtube")
;     Send "{VOLUME_MUTE}"
;     HotIf WinExist
; Return
; }

; Next(){
;     HotIf WinExist("ahk_class Youtube")
;     Send "{Media_Next}"
;     HotIf WinExist
; Return
; }

; VolUp(){
;     SoundSetVolume +5
; Return
; }

; VolDown(){
;     SoundSetVolume -5
; Return
; }

; Pandora(){
;     Run "https://www.pandora.com/station"
; Return
; }

; YT(){
;     Run "www.youtube.com"
; Return
; }