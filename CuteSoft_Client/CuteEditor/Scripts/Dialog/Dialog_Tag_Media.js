var OxO616e=["outer","btnbrowse","inp_src","onclick","value","cssText","style","src","FileName"];var outer=Window_GetElement(window,OxO616e[0x0],true);var btnbrowse=Window_GetElement(window,OxO616e[0x1],true);var inp_src=Window_GetElement(window,OxO616e[0x2],true); btnbrowse[OxO616e[0x3]]=function btnbrowse_onclick(){ function Ox2db(Ox137){if(Ox137){ inp_src[OxO616e[0x4]]=Ox137 ;} ;}  ; editor.SetNextDialogWindow(window) ; editor.ShowSelectFileDialog(Ox2db,inp_src.value) ;}  ; UpdateState=function UpdateState_Media(){ outer[OxO616e[0x6]][OxO616e[0x5]]=element[OxO616e[0x6]][OxO616e[0x5]] ; outer.mergeAttributes(element) ;if(element[OxO616e[0x7]]){ outer[OxO616e[0x8]]=element[OxO616e[0x8]] ;} else { outer.removeAttribute(OxO616e[0x8]) ;} ;}  ; SyncToView=function SyncToView_Media(){ inp_src[OxO616e[0x4]]=element[OxO616e[0x8]] ;}  ; SyncTo=function SyncTo_Media(element){ element[OxO616e[0x8]]=inp_src[OxO616e[0x4]] ;}  ;