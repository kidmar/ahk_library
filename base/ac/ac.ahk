#include <lib_g>
#include <lib_CONTROL>
#include %A_ScriptDir%\scripts\ac\optionsDialog.ahk ; Options Dialog
#include %A_ScriptDir%\scripts\ac\acController.ahk  ; Controller

#If NOT FunControlIS("PBTreeView32_901")
:?*:dba.::
!Space::
    VarWinID:=WinActive("A")
    
    if (!ac){
        ac := new Autocomplete()
    }
    
    ac.controller.lastHwnd  := VarWinID
    ac.controller.setHotkey(A_thishotkey)
    ac.show()
    VarWinID=
return
#If

:?*:dbaa.::
  Send dba.
return

FunControlIS(VarClassNN = "PBTreeView32_901")
{
  if (FunGetClassNN() = VarClassNN)
  {
    return 1
  }
  else
  {
    return 0
  }
}

FunGetClassNN()
{
  ControlGetFocus, OutputVar, A
  Return OutputVar
}

FunSendClip(VarTesto) {
    ; Mi salvo la vecchia clipboard, aggiungo una pipe per convertire tutto in stringa ed evitare che tolga gli zeri iniziali (se nella clip c'è 00090 diventa 90)
    VarClipOld := "|" . ClipBoard
    
    ; Mi assicuro di averla copiata
    Loop, 100 {
        if (VarClipOld = Clipboard)
            break
    }
    
    ; Inserisco nella Clipboard il nuovo testo
    ClipBoard := VarTesto
    
    ; Mi assicuro che sia arrivato
    Loop, 100 {
        if (ClipBoard = VarTesto)
            break
    }
    if (ClipBoard != VarTesto)
        msgbox, Errore riempimento clipboard
    
    Sleep, 100
    Send, ^v
    
    Sleep 300
    
    ; Reimposto la clipboard, tolgo la pipe iniziale
    ClipBoard := SubStr(VarClipOld, 2)
}

FunSendClip_old(VarTesto)
{
  ; Salvo e svuoto la ClipBoard
  VarClipOld := ClipBoard
  
  ; Svuoto la clipboard
  Sleep, 1
  ClipBoard:=""
  
  ; Aspetto che la clipboard si svuoti
  loop
  {
    If NOT Clipboard
      BREAK
  }
  
  ; Imposto il testo da incollare a aspetto che sia compilato
  ClipBoard:=VarTesto
  ClipWait, 2
  if (ClipBoard = "")
    msgbox, Cliboard vuota
    
  Send, ^v
  
  Sleep, 500
  ClipBoard=
  Clipboard:=VarClipOld
  ClipWait, 1
  loop
  {
    VarNow:=Clipboard
    If (VarNow = VarClipOld)
    {
      Break
    }
    else
    {
      Sleep, 10
    } 
  }
}

class autoComplete extends g {  ; ________________________


    name  := "acWin"
    title := "autoComplete"
    win   := { listbox   : 0
             , edit      : 0
             , hotkeys:  { "Tab"      : "tabslot"
                         , "vkBE"     : "tabslot"
                         , "Capslock" : "capslockSlot"
                         , "+Enter"   : "enterSlot"
                         , "Enter"    : "enterSlot"
                         , "NumPadEnter" : "enterSlot"
                         , ","        : "enterSlot"
                         , "+,"       : "enterSlot"
                         , "Up"       : "arrowSlot"
                         , "Down"     : "arrowSlot"
                         , "+Up"      : "arrowSlot"
                         , "+Down"    : "arrowSlot"
                         , "^a"       : "selectAll"
                         , "^d"       : "deselectAll"
                         , "^o"       : "odbcConfig"   }
             , controls: { "Edit1"    : "filter"     } }
    geom       := { w: 380, h: 537 }
    Entries    := ""
    hwnd       := ""
    controller := new acController(this)

    __new(){

        g := this.name

        Gui, %g%: +Resize 
        Gui, %g%: Font, s10, Verdana
        Gui, %g%: Add, edit,    x0 y0  w300 h20 hwndhwndedit    gEventDispatcher
        Gui, %g%: Add, listbox, x0 y20          hwndhwndlistbox Choose0 0x100 Multi +0x1000

        this.hwnd     := winhwnd
        this.listbox  := new Listbox(hwndlistbox)
        this.win.edit := hwndedit

    }

    show(){
        base.show()
        this.entries := ( this.controller.firstRun
            ? this.controller.start()
            : this.controller.getEntries( this.controller.currentLevel ) )
        this.populate( this.entries )
    }

    populate(entries) {
        if ( ! entries ) {
            return
        }
        this.entries := entries
        this.controlSet( this.listbox.hwnd, "", Entries )

        val := this.controller.getCurrentLevel().value
        this.controlSet( this.win.edit, "", "" )
        Gui, % this.name ": Show",, % this.controller.getTitle()
        this.listbox.deselectAll()

        if (val){
            controlfocus,, % "ahk_id " this.listbox.hwnd
            if (instr(entries, val)){
                this.listbox.choose(val)
            }
        } else {
            this.listbox.choose(0)
        }
        controlfocus,, % "ahk_id " this.win.edit

    }
    size(){
        bl := A_BatchLines
        SetBatchLines, 1000
        this.controlSet( this.listbox.hwnd, "Move", "w" A_GuiWidth " h" A_GuiHeight - 20)
        this.controlSet( this.win.edit,     "Move", "w" A_GuiWidth )
        SetBatchLines, %bl%
    }

    tabslot(){
        s := this.controlGet( this.listbox.hwnd )
        if (instr(s,"|")){
            throw "Select only one."
        }
        this.populate( this.controller.changeLevel(1, s) )
    }

    capslockSlot(){
        this.populate( this.controller.changeLevel(-1) )
    }

    arrowSlot(){
        htk := a_thishotkey

        s := "+".in(htk)
            ? s := htk.slice(2).qc().q( "{Shift down}", "{Shift Up}" )
            : s := htk.qc()
        ControlFocus,, % "ahk_id " this.listbox.hwnd
        Send, % s
    }

    odbcConfig(){
        if (this.controller.currentLevel == 0){
            dsn := this.listbox.get()
            d := new optionsDialog(dsn)
            d.show()
        }
    }

    deselectAll(){
        this.listbox.deselectAll()
    }
    selectAll(){
        this.listbox.selectAll()
    }

    enterSlot(){
        global ac 
        this.hide()

        ; Fastest
        batchlines := A_Batchlines
        ;setbatchlines, -1

        ; Get all the selected fields
        s := this.controlGet( this.listbox.hwnd )
        s := this.controller.build(s)
        
        VarID:=ac.controller.lastHwnd
        WinActivate, ahk_id %VarID%
        WinWaitActive,ahk_id %VarID%,,2
        
        ; Incollo il risultato dalla clipboard invece che scriverlo
        ;SendInput, % s
        FunSendClip(s)

        ; Get back to normal speed
        ;setbatchlines, % batchlines
    }

    filter() {
        t := this.controlGet( this.win.edit )
        entries := this.Entries
        if (t != ""){
            arr     := entries.split("|", "")
            entries := ""
            top     := ""
            for k, v in arr {
                s := instr(v,t)
                if ( s > 0 ){
                    if ( s == 1 ){
                        top     .= "|" v
                    } else {
                        entries .= "|" v
                    }
                }
            }
        }

        entries := top entries
        entries := Core.firstValid( entries, "|" )

        this.listbox.set( entries )
        this.listbox.choose(0)
    }

}

return

