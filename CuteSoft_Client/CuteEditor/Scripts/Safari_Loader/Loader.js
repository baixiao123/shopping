var OxOa0f5=["isWinIE","isGecko","isSafari","isOpera","userAgent","ua","opera","safari","gecko","msie","compatMode","document","CSS1Compat","undefined","Microsoft.XMLHTTP","readyState","onreadystatechange","","length","all","childNodes","nodeType","\x0D\x0A","onchange","oninitialized","command","commandui","commandvalue","returnValue","oncommand","string","event","_fireEventFunction","parentNode","_IsCuteEditor","True","readOnly","_IsRichDropDown","null","value","selectedIndex","nodeName","TR","cells","display","style","nextSibling","innerHTML","\x3Cimg src=\x22","/Load.ashx?type=image\x26file=t-minus.gif\x22\x3E","CuteEditor_CollapseTreeDropDownItem(this,\x22","\x22)","onclick","onmousedown","none","/Load.ashx?type=image\x26file=t-plus.gif\x22\x3E","CuteEditor_ExpandTreeDropDownItem(this,\x22","contains","UNSELECTABLE","on","tabIndex","-1","//TODO: event not found? throw error ?","contentWindow","contentDocument","parentWindow","id","frames","frameElement","//TODO:frame contentWindow not found?","preventDefault","caller","arguments","parent","top","opener","srcElement","target","//TODO: srcElement not found? throw error ?","fromElement","relatedTarget","toElement","keyCode","clientX","clientY","offsetX","offsetY","button","ctrlKey","altKey","shiftKey","cancelBubble","stopPropagation","CuteEditor_GetEditor(this).ExecImageCommand(this.getAttribute(\x27Command\x27),this.getAttribute(\x27CommandUI\x27),this.getAttribute(\x27CommandArgument\x27),this)","CuteEditor_GetEditor(this).PostBack(this.getAttribute(\x27Command\x27))","this.onmouseout();CuteEditor_GetEditor(this).DropMenu(this.getAttribute(\x27Group\x27),this)","ResourceDir","Theme","/Load.ashx?type=theme\x26theme=","\x26file=all.png","/Images/blank2020.gif","IMG","Command","Group","ThemeIndex","width","20px","height","src","backgroundImage","url(",")","backgroundPosition","0 -","px","onload","className","separator","CuteEditorButton","CuteEditor_ButtonCommandOver(this)","onmouseover","CuteEditor_ButtonCommandOut(this)","onmouseout","CuteEditor_ButtonCommandDown(this)","CuteEditor_ButtonCommandUp(this)","onmouseup","oncontextmenu","ondragstart","PostBack","ondblclick","_ToolBarID","_CodeViewToolBarID","_FrameID"," CuteEditorFrame"," CuteEditorToolbar","ActiveTab","View","Code","Edit","buttonInitialized","isover","CuteEditorButtonOver","CuteEditorButtonDown","CuteEditorDown","border","solid 1px #0A246A","backgroundColor","#b6bdd2","padding","1px","solid 1px #f5f5f4","inset 1px","IsCommandDisabled","CuteEditorButtonDisabled","IsCommandActive","CuteEditorButtonActive","cmd_fromfullpage","(","href","location",",DanaInfo=",",","+","scriptProperties","GetScriptProperty","/Load.ashx?type=scripts\x26file=Safar_Implementation","CuteEditorImplementation","function","POST","\x26getModified=1","status","Failed to load impl time!","GET","\x26modified=","Failed to load impl code!","cursor","hand","body","InitializeCode","block","contentEditable"," \x3Cbr /\x3E ","designMode","no-drop","CuteEditorInitialize"];var _Browser_TypeInfo=null; function Browser__InitType(){if(_Browser_TypeInfo!=null){return ;} ;var Ox4={}; Ox4[OxOa0f5[0x5]]=navigator[OxOa0f5[0x4]].toLowerCase(),Ox4[OxOa0f5[0x3]]=(Ox4[OxOa0f5[0x5]].indexOf(OxOa0f5[0x6])>-0x1),Ox4[OxOa0f5[0x2]]=(Ox4[OxOa0f5[0x5]].indexOf(OxOa0f5[0x7])>-0x1),Ox4[OxOa0f5[0x1]]=(!Ox4[OxOa0f5[0x3]]&&!Ox4[OxOa0f5[0x2]]&&Ox4[OxOa0f5[0x5]].indexOf(OxOa0f5[0x8])>-0x1),Ox4[OxOa0f5[0x0]]=(!Ox4[OxOa0f5[0x3]]&&Ox4[OxOa0f5[0x5]].indexOf(OxOa0f5[0x9])>-0x1) ; _Browser_TypeInfo=Ox4 ;}  ; Browser__InitType() ; function Browser_IsWinIE(){return _Browser_TypeInfo[OxOa0f5[0x0]];}  ; function Browser_IsGecko(){return _Browser_TypeInfo[OxOa0f5[0x1]];}  ; function Browser_IsOpera(){return _Browser_TypeInfo[OxOa0f5[0x3]];}  ; function Browser_IsSafari(){return _Browser_TypeInfo[OxOa0f5[0x2]];}  ; function Browser_UseIESelection(){return _Browser_TypeInfo[OxOa0f5[0x0]];}  ; function Browser_IsCSS1Compat(){return window[OxOa0f5[0xb]][OxOa0f5[0xa]]==OxOa0f5[0xc];}  ; function CreateXMLHttpRequest(){try{if( typeof (XMLHttpRequest)!=OxOa0f5[0xd]){return  new XMLHttpRequest();} ;if( typeof (ActiveXObject)!=OxOa0f5[0xd]){return  new ActiveXObject(OxOa0f5[0xe]);} ;} catch(x){return null;} ;}  ; function LoadXMLAsync(Ox956,Ox205,Ox1ae,Ox957){var Oxe0=CreateXMLHttpRequest(); function Ox958(){if(Oxe0[OxOa0f5[0xf]]!=0x4){return ;} ; Oxe0[OxOa0f5[0x10]]= new Function() ;var Ox20d=Oxe0; Oxe0=null ; Ox1ae(Ox20d) ;}  ; Oxe0[OxOa0f5[0x10]]=Ox958 ; Oxe0.open(Ox956,Ox205,true) ; Oxe0.send(Ox957||OxOa0f5[0x11]) ;}  ; function Element_GetAllElements(p){var arr=[];if(Browser_IsWinIE()){for(var i=0x0;i<p[OxOa0f5[0x13]][OxOa0f5[0x12]];i++){ arr.push(p[OxOa0f5[0x13]].item(i)) ;} ;return arr;} ; Ox1bc(p) ; function Ox1bc(Ox27){var Ox1bd=Ox27[OxOa0f5[0x14]];var Ox11=Ox1bd[OxOa0f5[0x12]];for(var i=0x0;i<Ox11;i++){var n=Ox1bd.item(i);if(n[OxOa0f5[0x15]]!=0x1){continue ;} ; arr.push(n) ; Ox1bc(n) ;} ;}  ;return arr;}  ;var __ISDEBUG=false; function Debug_Todo(msg){if(!__ISDEBUG){return ;} ;throw ( new Error(msg+OxOa0f5[0x16]+Debug_Todo.caller));}  ; function Window_GetElement(Ox1b5,Ox93,Ox1ba){var Ox27=Ox1b5[OxOa0f5[0xb]].getElementById(Ox93);if(Ox27){return Ox27;} ;var Ox2f=Ox1b5[OxOa0f5[0xb]].getElementsByName(Ox93);if(Ox2f[OxOa0f5[0x12]]>0x0){return Ox2f.item(0x0);} ;return null;}  ; function CuteEditor_AddMainMenuItems(Ox5ec){}  ; function CuteEditor_AddDropMenuItems(Ox5ec,Ox5f3){}  ; function CuteEditor_AddTagMenuItems(Ox5ec,Ox5f5){}  ; function CuteEditor_AddVerbMenuItems(Ox5ec,Ox5f5){}  ; function CuteEditor_OnInitialized(editor){}  ; function CuteEditor_OnCommand(editor,Ox5f9,Ox5fa,Ox4e){}  ; function CuteEditor_OnChange(editor){}  ; function CuteEditor_FilterCode(editor,Ox1e7){return Ox1e7;}  ; function CuteEditor_FilterHTML(editor,Ox1ff){return Ox1ff;}  ; function CuteEditor_FireChange(editor){ window.CuteEditor_OnChange(editor) ; CuteEditor_FireEvent(editor,OxOa0f5[0x17],null) ;}  ; function CuteEditor_FireInitialized(editor){ window.CuteEditor_OnInitialized(editor) ; CuteEditor_FireEvent(editor,OxOa0f5[0x18],null) ;}  ; function CuteEditor_FireCommand(editor,Ox5f9,Ox5fa,Ox4e){var Ox137=window.CuteEditor_OnCommand(editor,Ox5f9,Ox5fa,Ox4e);if(Ox137==true){return true;} ;var Ox601={}; Ox601[OxOa0f5[0x19]]=Ox5f9 ; Ox601[OxOa0f5[0x1a]]=Ox5fa ; Ox601[OxOa0f5[0x1b]]=Ox4e ; Ox601[OxOa0f5[0x1c]]=true ; CuteEditor_FireEvent(editor,OxOa0f5[0x1d],Ox601) ;if(Ox601[OxOa0f5[0x1c]]==false){return true;} ;}  ; function CuteEditor_FireEvent(editor,Ox603,Ox604){if(Ox604==null){ Ox604={} ;} ;var Ox605=editor.getAttribute(Ox603);if(Ox605){if( typeof (Ox605)==OxOa0f5[0x1e]){ editor[OxOa0f5[0x20]]= new Function(OxOa0f5[0x1f],Ox605) ;} else { editor[OxOa0f5[0x20]]=Ox605 ;} ; editor._fireEventFunction(Ox604) ;} ;}  ; function CuteEditor_GetEditor(element){for(var Ox42=element;Ox42!=null;Ox42=Ox42[OxOa0f5[0x21]]){if(Ox42.getAttribute(OxOa0f5[0x22])==OxOa0f5[0x23]){return Ox42;} ;} ;return null;}  ; function CuteEditor_DropDownCommand(element,Ox95a){var editor=CuteEditor_GetEditor(element);if(editor[OxOa0f5[0x24]]){return ;} ;if(element.getAttribute(OxOa0f5[0x25])==OxOa0f5[0x23]){var Ox13b=element.GetValue();if(Ox13b==OxOa0f5[0x26]){ Ox13b=OxOa0f5[0x11] ;} ;var Ox17d=element.GetText();if(Ox17d==OxOa0f5[0x26]){ Ox17d=OxOa0f5[0x11] ;} ; element.SetSelectedIndex(0x0) ; editor.ExecCommand(Ox95a,false,Ox13b,Ox17d) ;} else {if(element[OxOa0f5[0x27]]){var Ox13b=element[OxOa0f5[0x27]];if(Ox13b==OxOa0f5[0x26]){ Ox13b=OxOa0f5[0x11] ;} ; element[OxOa0f5[0x28]]=0x0 ; editor.ExecCommand(Ox95a,false,Ox13b,Ox17d) ;} else { element[OxOa0f5[0x28]]=0x0 ;} ;} ; editor.FocusDocument() ;}  ; function CuteEditor_ExpandTreeDropDownItem(src,Ox6c1){var Oxb3=null;while(src!=null){if(src[OxOa0f5[0x29]]==OxOa0f5[0x2a]){ Oxb3=src ;break ;} ; src=src[OxOa0f5[0x21]] ;} ;var Ox31b=Oxb3[OxOa0f5[0x2b]].item(0x0); Oxb3[OxOa0f5[0x2e]][OxOa0f5[0x2d]][OxOa0f5[0x2c]]=OxOa0f5[0x11] ; Ox31b[OxOa0f5[0x2f]]=OxOa0f5[0x30]+Ox6c1+OxOa0f5[0x31] ; Oxb3[OxOa0f5[0x34]]= new Function(OxOa0f5[0x32]+Ox6c1+OxOa0f5[0x33]) ; Oxb3[OxOa0f5[0x35]]= new Function(OxOa0f5[0x32]+Ox6c1+OxOa0f5[0x33]) ;}  ; function CuteEditor_CollapseTreeDropDownItem(src,Ox6c1){var Oxb3=null;while(src!=null){if(src[OxOa0f5[0x29]]==OxOa0f5[0x2a]){ Oxb3=src ;break ;} ; src=src[OxOa0f5[0x21]] ;} ;var Ox31b=Oxb3[OxOa0f5[0x2b]].item(0x0); Oxb3[OxOa0f5[0x2e]][OxOa0f5[0x2d]][OxOa0f5[0x2c]]=OxOa0f5[0x36] ; Ox31b[OxOa0f5[0x2f]]=OxOa0f5[0x30]+Ox6c1+OxOa0f5[0x37] ; Oxb3[OxOa0f5[0x34]]= new Function(OxOa0f5[0x38]+Ox6c1+OxOa0f5[0x33]) ; Oxb3[OxOa0f5[0x35]]= new Function(OxOa0f5[0x38]+Ox6c1+OxOa0f5[0x33]) ;}  ; function Element_Contains(element,Ox16c){if(!Browser_IsOpera()){if(element[OxOa0f5[0x39]]){return element.contains(Ox16c);} ;} ;for(;Ox16c!=null;Ox16c=Ox16c[OxOa0f5[0x21]]){if(element==Ox16c){return true;} ;} ;return false;}  ; function Element_SetUnselectable(element){ element.setAttribute(OxOa0f5[0x3a],OxOa0f5[0x3b]) ; element.setAttribute(OxOa0f5[0x3c],OxOa0f5[0x3d]) ;var arr=Element_GetAllElements(element);var len=arr[OxOa0f5[0x12]];if(!len){return ;} ;for(var i=0x0;i<len;i++){ arr[i].setAttribute(OxOa0f5[0x3a],OxOa0f5[0x3b]) ; arr[i].setAttribute(OxOa0f5[0x3c],OxOa0f5[0x3d]) ;} ;}  ; function Event_GetEvent(Ox1c0){ Ox1c0=Event_FindEvent(Ox1c0) ;if(Ox1c0==null){ Debug_Todo(OxOa0f5[0x3e]) ;} ;return Ox1c0;}  ; function Frame_GetContentWindow(Ox2c7){if(Ox2c7[OxOa0f5[0x3f]]){return Ox2c7[OxOa0f5[0x3f]];} ;if(Ox2c7[OxOa0f5[0x40]]){if(Ox2c7[OxOa0f5[0x40]][OxOa0f5[0x41]]){return Ox2c7[OxOa0f5[0x40]][OxOa0f5[0x41]];} ;} ;var Ox1b5;if(Ox2c7[OxOa0f5[0x42]]){ Ox1b5=window[OxOa0f5[0x43]][Ox2c7[OxOa0f5[0x42]]] ;if(Ox1b5){return Ox1b5;} ;} ;var len=window[OxOa0f5[0x43]][OxOa0f5[0x12]];for(var i=0x0;i<len;i++){ Ox1b5=window[OxOa0f5[0x43]][i] ;if(Ox1b5[OxOa0f5[0x44]]==Ox2c7){return Ox1b5;} ;if(Ox1b5[OxOa0f5[0xb]]==Ox2c7[OxOa0f5[0x40]]){return Ox1b5;} ;} ; Debug_Todo(OxOa0f5[0x45]) ;}  ; function Array_IndexOf(arr,Ox1c2){for(var i=0x0;i<arr[OxOa0f5[0x12]];i++){if(arr[i]==Ox1c2){return i;} ;} ;return -0x1;}  ; function Array_Contains(arr,Ox1c2){return Array_IndexOf(arr,Ox1c2)!=-0x1;}  ; function Event_FindEvent(Ox1c0){if(Ox1c0&&Ox1c0[OxOa0f5[0x46]]){return Ox1c0;} ;if(Browser_IsGecko()){return Event_FindEvent_FindEventFromCallers();} else {if(window[OxOa0f5[0x1f]]){return window[OxOa0f5[0x1f]];} ;return Event_FindEvent_FindEventFromWindows();} ;return null;}  ; function Event_FindEvent_FindEventFromCallers(){var Ox1c8=Event_GetEvent[OxOa0f5[0x47]];for(var i=0x0;i<0x64;i++){if(!Ox1c8){break ;} ;var Ox1c0=Ox1c8[OxOa0f5[0x48]][0x0];if(Ox1c0&&Ox1c0[OxOa0f5[0x46]]){return Ox1c0;} ; Ox1c8=Ox1c8[OxOa0f5[0x47]] ;} ;}  ; function Event_FindEvent_FindEventFromWindows(){var arr=[];return Ox1ca(window); function Ox1ca(Ox1b5){if(Ox1b5==null){return null;} ;if(Ox1b5[OxOa0f5[0x1f]]){return Ox1b5[OxOa0f5[0x1f]];} ;if(Array_Contains(arr,Ox1b5)){return null;} ; arr.push(Ox1b5) ;var Ox1cb=[];if(Ox1b5[OxOa0f5[0x49]]!=Ox1b5){ Ox1cb.push(Ox1b5.parent) ;} ;if(Ox1b5[OxOa0f5[0x4a]]!=Ox1b5[OxOa0f5[0x49]]){ Ox1cb.push(Ox1b5.top) ;} ;if(Ox1b5[OxOa0f5[0x4b]]){ Ox1cb.push(Ox1b5.opener) ;} ;for(var i=0x0;i<Ox1b5[OxOa0f5[0x43]][OxOa0f5[0x12]];i++){ Ox1cb.push(Ox1b5[OxOa0f5[0x43]][i]) ;} ;for(var i=0x0;i<Ox1cb[OxOa0f5[0x12]];i++){try{var Ox1c0=Ox1ca(Ox1cb[i]);if(Ox1c0){return Ox1c0;} ;} catch(x){} ;} ;return null;}  ;}  ; function Event_GetSrcElement(Ox1c0){ Ox1c0=Event_GetEvent(Ox1c0) ;if(Ox1c0[OxOa0f5[0x4c]]){return Ox1c0[OxOa0f5[0x4c]];} ;if(Ox1c0[OxOa0f5[0x4d]]){return Ox1c0[OxOa0f5[0x4d]];} ; Debug_Todo(OxOa0f5[0x4e]) ;return null;}  ; function Event_GetFromElement(Ox1c0){ Ox1c0=Event_GetEvent(Ox1c0) ;if(Ox1c0[OxOa0f5[0x4f]]){return Ox1c0[OxOa0f5[0x4f]];} ;if(Ox1c0[OxOa0f5[0x50]]){return Ox1c0[OxOa0f5[0x50]];} ;return null;}  ; function Event_GetToElement(Ox1c0){ Ox1c0=Event_GetEvent(Ox1c0) ;if(Ox1c0[OxOa0f5[0x51]]){return Ox1c0[OxOa0f5[0x51]];} ;if(Ox1c0[OxOa0f5[0x50]]){return Ox1c0[OxOa0f5[0x50]];} ;return null;}  ; function Event_GetKeyCode(Ox1c0){ Ox1c0=Event_GetEvent(Ox1c0) ;return Ox1c0[OxOa0f5[0x52]];}  ; function Event_GetClientX(Ox1c0){ Ox1c0=Event_GetEvent(Ox1c0) ;return Ox1c0[OxOa0f5[0x53]];}  ; function Event_GetClientY(Ox1c0){ Ox1c0=Event_GetEvent(Ox1c0) ;return Ox1c0[OxOa0f5[0x54]];}  ; function Event_GetOffsetX(Ox1c0){ Ox1c0=Event_GetEvent(Ox1c0) ;return Ox1c0[OxOa0f5[0x55]];}  ; function Event_GetOffsetY(Ox1c0){ Ox1c0=Event_GetEvent(Ox1c0) ;return Ox1c0[OxOa0f5[0x56]];}  ; function Event_IsLeftButton(Ox1c0){ Ox1c0=Event_GetEvent(Ox1c0) ;if(Browser_IsWinIE()){return Ox1c0[OxOa0f5[0x57]]==0x1;} ;if(Browser_IsGecko()){return Ox1c0[OxOa0f5[0x57]]==0x0;} ;return Ox1c0[OxOa0f5[0x57]]==0x0;}  ; function Event_IsCtrlKey(Ox1c0){ Ox1c0=Event_GetEvent(Ox1c0) ;return Ox1c0[OxOa0f5[0x58]];}  ; function Event_IsAltKey(Ox1c0){ Ox1c0=Event_GetEvent(Ox1c0) ;return Ox1c0[OxOa0f5[0x59]];}  ; function Event_IsShiftKey(Ox1c0){ Ox1c0=Event_GetEvent(Ox1c0) ;return Ox1c0[OxOa0f5[0x5a]];}  ; function Event_PreventDefault(Ox1c0){ Ox1c0=Event_GetEvent(Ox1c0) ; Ox1c0[OxOa0f5[0x1c]]=false ;if(Ox1c0[OxOa0f5[0x46]]){ Ox1c0.preventDefault() ;} ;}  ; function Event_CancelBubble(Ox1c0){ Ox1c0=Event_GetEvent(Ox1c0) ; Ox1c0[OxOa0f5[0x5b]]=true ;if(Ox1c0[OxOa0f5[0x5c]]){ Ox1c0.stopPropagation() ;} ;return false;}  ; function Event_CancelEvent(Ox1c0){ Ox1c0=Event_GetEvent(Ox1c0) ; Event_PreventDefault(Ox1c0) ;return Event_CancelBubble(Ox1c0);}  ; function CuteEditor_BasicInitialize(editor){var Ox95e=Browser_IsOpera();var Ox68b= new Function(OxOa0f5[0x5d]);var Ox95f= new Function(OxOa0f5[0x5e]);var Ox960= new Function(OxOa0f5[0x5f]);var Ox961=editor.GetScriptProperty(OxOa0f5[0x60]);var Ox962=editor.GetScriptProperty(OxOa0f5[0x61]);var Ox963=Ox961+OxOa0f5[0x62]+Ox962+OxOa0f5[0x63];var Ox964=Ox961+OxOa0f5[0x64];var images=editor.getElementsByTagName(OxOa0f5[0x65]);var len=images[OxOa0f5[0x12]];for(var i=0x0;i<len;i++){var img=images[i];var Ox12e=img.getAttribute(OxOa0f5[0x66]);var Ox5f3=img.getAttribute(OxOa0f5[0x67]);var Ox965=img.getAttribute(OxOa0f5[0x68]);if(parseInt(Ox965)>=0x0){ img[OxOa0f5[0x2d]][OxOa0f5[0x69]]=OxOa0f5[0x6a] ; img[OxOa0f5[0x2d]][OxOa0f5[0x6b]]=OxOa0f5[0x6a] ; img[OxOa0f5[0x6c]]=Ox964 ; img[OxOa0f5[0x2d]][OxOa0f5[0x6d]]=OxOa0f5[0x6e]+Ox963+OxOa0f5[0x6f] ; img[OxOa0f5[0x2d]][OxOa0f5[0x70]]=OxOa0f5[0x71]+(Ox965*0x14)+OxOa0f5[0x72] ; img[OxOa0f5[0x2d]][OxOa0f5[0x2c]]=OxOa0f5[0x11] ;} ;if(!Ox12e&&!Ox5f3){if(Ox95e){ img[OxOa0f5[0x73]]=CuteEditor_OperaHandleImageLoaded ;} ;continue ;} ;if(img[OxOa0f5[0x74]]!=OxOa0f5[0x75]){ img[OxOa0f5[0x74]]=OxOa0f5[0x76] ; img[OxOa0f5[0x78]]= new Function(OxOa0f5[0x77]) ; img[OxOa0f5[0x7a]]= new Function(OxOa0f5[0x79]) ; img[OxOa0f5[0x35]]= new Function(OxOa0f5[0x7b]) ; img[OxOa0f5[0x7d]]= new Function(OxOa0f5[0x7c]) ;} ;if(!img[OxOa0f5[0x7e]]){ img[OxOa0f5[0x7e]]=Event_CancelEvent ;} ;if(!img[OxOa0f5[0x7f]]){ img[OxOa0f5[0x7f]]=Event_CancelEvent ;} ;if(Ox12e){var Ox1c8=img.getAttribute(OxOa0f5[0x80])==OxOa0f5[0x23]?Ox95f:Ox68b;if(img[OxOa0f5[0x34]]==null){ img[OxOa0f5[0x34]]=Ox1c8 ;} ;if(img[OxOa0f5[0x81]]==null){ img[OxOa0f5[0x81]]=Ox1c8 ;} ;} else {if(Ox5f3){if(img[OxOa0f5[0x34]]==null){ img[OxOa0f5[0x34]]=Ox960 ;} ;} ;} ;} ;var Ox6f6=Window_GetElement(window,editor.GetScriptProperty(OxOa0f5[0x82]),true);var Ox6f7=Window_GetElement(window,editor.GetScriptProperty(OxOa0f5[0x83]),true);var Ox6f2=Window_GetElement(window,editor.GetScriptProperty(OxOa0f5[0x84]),true); Ox6f2[OxOa0f5[0x74]]+=OxOa0f5[0x85] ; Ox6f6[OxOa0f5[0x74]]+=OxOa0f5[0x86] ; Ox6f7[OxOa0f5[0x74]]+=OxOa0f5[0x86] ; Element_SetUnselectable(Ox6f6) ; Element_SetUnselectable(Ox6f7) ;var Ox774=editor.GetScriptProperty(OxOa0f5[0x87]);switch(Ox774){case OxOa0f5[0x8a]: Ox6f6[OxOa0f5[0x2d]][OxOa0f5[0x2c]]=OxOa0f5[0x11] ;break ;case OxOa0f5[0x89]: Ox6f7[OxOa0f5[0x2d]][OxOa0f5[0x2c]]=OxOa0f5[0x11] ;break ;case OxOa0f5[0x88]:break ;;;;} ;}  ; function CuteEditor_OperaHandleImageLoaded(){var img=this;if(img[OxOa0f5[0x2d]][OxOa0f5[0x2c]]){ img[OxOa0f5[0x2d]][OxOa0f5[0x2c]]=OxOa0f5[0x36] ; setTimeout(function Ox967(){ img[OxOa0f5[0x2d]][OxOa0f5[0x2c]]=OxOa0f5[0x11] ;} ,0x1) ;} ;}  ; function CuteEditor_ButtonOver(element){if(!element[OxOa0f5[0x8b]]){ element[OxOa0f5[0x7e]]=Event_CancelEvent ; element[OxOa0f5[0x7a]]=CuteEditor_ButtonOut ; element[OxOa0f5[0x35]]=CuteEditor_ButtonDown ; element[OxOa0f5[0x7d]]=CuteEditor_ButtonUp ; Element_SetUnselectable(element) ; element[OxOa0f5[0x8b]]=true ;} ; element[OxOa0f5[0x8c]]=true ; element[OxOa0f5[0x74]]=OxOa0f5[0x8d] ;}  ; function CuteEditor_ButtonOut(){var element=this; element[OxOa0f5[0x74]]=OxOa0f5[0x76] ; element[OxOa0f5[0x8c]]=false ;}  ; function CuteEditor_ButtonDown(){if(!Event_IsLeftButton()){return ;} ;var element=this; element[OxOa0f5[0x74]]=OxOa0f5[0x8e] ;}  ; function CuteEditor_ButtonUp(){if(!Event_IsLeftButton()){return ;} ;var element=this;if(element[OxOa0f5[0x8c]]){ element[OxOa0f5[0x74]]=OxOa0f5[0x8d] ;} else { element[OxOa0f5[0x74]]=OxOa0f5[0x8f] ;} ;}  ; function CuteEditor_ColorPicker_ButtonOver(element){if(!element[OxOa0f5[0x8b]]){ element[OxOa0f5[0x7e]]=Event_CancelEvent ; element[OxOa0f5[0x7a]]=CuteEditor_ColorPicker_ButtonOut ; element[OxOa0f5[0x35]]=CuteEditor_ColorPicker_ButtonDown ; Element_SetUnselectable(element) ; element[OxOa0f5[0x8b]]=true ;} ; element[OxOa0f5[0x8c]]=true ; element[OxOa0f5[0x2d]][OxOa0f5[0x90]]=OxOa0f5[0x91] ; element[OxOa0f5[0x2d]][OxOa0f5[0x92]]=OxOa0f5[0x93] ; element[OxOa0f5[0x2d]][OxOa0f5[0x94]]=OxOa0f5[0x95] ;}  ; function CuteEditor_ColorPicker_ButtonOut(){var element=this; element[OxOa0f5[0x8c]]=false ; element[OxOa0f5[0x2d]][OxOa0f5[0x90]]=OxOa0f5[0x96] ; element[OxOa0f5[0x2d]][OxOa0f5[0x92]]=OxOa0f5[0x11] ; element[OxOa0f5[0x2d]][OxOa0f5[0x94]]=OxOa0f5[0x95] ;}  ; function CuteEditor_ColorPicker_ButtonDown(){var element=this; element[OxOa0f5[0x2d]][OxOa0f5[0x90]]=OxOa0f5[0x97] ; element[OxOa0f5[0x2d]][OxOa0f5[0x92]]=OxOa0f5[0x11] ; element[OxOa0f5[0x2d]][OxOa0f5[0x94]]=OxOa0f5[0x95] ;}  ; function CuteEditor_ButtonCommandOver(element){ element[OxOa0f5[0x8c]]=true ;if(element[OxOa0f5[0x98]]){ element[OxOa0f5[0x74]]=OxOa0f5[0x99] ;} else { element[OxOa0f5[0x74]]=OxOa0f5[0x8d] ;} ;}  ; function CuteEditor_ButtonCommandOut(element){ element[OxOa0f5[0x8c]]=false ;if(element[OxOa0f5[0x9a]]){ element[OxOa0f5[0x74]]=OxOa0f5[0x9b] ;} else {if(element[OxOa0f5[0x98]]){ element[OxOa0f5[0x74]]=OxOa0f5[0x99] ;} else {if(element[OxOa0f5[0x42]]!=OxOa0f5[0x9c]){ element[OxOa0f5[0x74]]=OxOa0f5[0x76] ;} ;} ;} ;}  ; function CuteEditor_ButtonCommandDown(element){if(!Event_IsLeftButton()){return ;} ; element[OxOa0f5[0x74]]=OxOa0f5[0x8e] ;}  ; function CuteEditor_ButtonCommandUp(element){if(!Event_IsLeftButton()){return ;} ;if(element[OxOa0f5[0x98]]){ element[OxOa0f5[0x74]]=OxOa0f5[0x99] ;return ;} ;if(element[OxOa0f5[0x8c]]){ element[OxOa0f5[0x74]]=OxOa0f5[0x8d] ;} else {if(element[OxOa0f5[0x9a]]){ element[OxOa0f5[0x74]]=OxOa0f5[0x9b] ;} else { element[OxOa0f5[0x74]]=OxOa0f5[0x76] ;} ;} ;}  ;var CuteEditorGlobalFunctions=[CuteEditor_GetEditor,CuteEditor_ButtonOver,CuteEditor_ButtonOut,CuteEditor_ButtonDown,CuteEditor_ButtonUp,CuteEditor_ColorPicker_ButtonOver,CuteEditor_ColorPicker_ButtonOut,CuteEditor_ColorPicker_ButtonDown,CuteEditor_ButtonCommandOver,CuteEditor_ButtonCommandOut,CuteEditor_ButtonCommandDown,CuteEditor_ButtonCommandUp,CuteEditor_DropDownCommand,CuteEditor_ExpandTreeDropDownItem,CuteEditor_CollapseTreeDropDownItem,CuteEditor_OnInitialized,CuteEditor_OnCommand,CuteEditor_OnChange,CuteEditor_AddVerbMenuItems,CuteEditor_AddTagMenuItems,CuteEditor_AddMainMenuItems,CuteEditor_AddDropMenuItems,CuteEditor_FilterCode,CuteEditor_FilterHTML]; function SetupCuteEditorGlobalFunctions(){for(var i=0x0;i<CuteEditorGlobalFunctions[OxOa0f5[0x12]];i++){var Ox1c8=CuteEditorGlobalFunctions[i];var name=Ox1c8+OxOa0f5[0x11]; name=name.substr(0x8,name.indexOf(OxOa0f5[0x9d])-0x8).replace(/\s/g,OxOa0f5[0x11]) ;if(!window[name]){ window[name]=Ox1c8 ;} ;} ;}  ; SetupCuteEditorGlobalFunctions() ;var __danainfo=null;var danaurl=window[OxOa0f5[0x9f]][OxOa0f5[0x9e]];var danapos=danaurl.indexOf(OxOa0f5[0xa0]);if(danapos!=-0x1){var pluspos1=danaurl.indexOf(OxOa0f5[0xa1],danapos+0xa);var pluspos2=danaurl.indexOf(OxOa0f5[0xa2],danapos+0xa);if(pluspos1!=-0x1&&pluspos1<pluspos2){ pluspos2=pluspos1 ;} ; __danainfo=danaurl.substring(danapos,pluspos2)+OxOa0f5[0xa2] ;} ; function CuteEditor_GetScriptProperty(name){var Ox13b=this[OxOa0f5[0xa3]][name];if(Ox13b&&__danainfo){if(name==OxOa0f5[0x60]){return Ox13b+__danainfo;} ;var Ox300=this[OxOa0f5[0xa3]][OxOa0f5[0x60]];if(Ox13b.substr(0x0,Ox300.length)==Ox300){return Ox300+__danainfo+Ox13b.substring(Ox300.length);} ;} ;return Ox13b;}  ; function CuteEditor_SetScriptProperty(name,Ox13b){if(Ox13b==null){ this[OxOa0f5[0xa3]][name]=null ;} else { this[OxOa0f5[0xa3]][name]=String(Ox13b) ;} ;}  ; function CuteEditorInitialize(Ox972,Ox973){var editor=Window_GetElement(window,Ox972,true); editor[OxOa0f5[0xa3]]=Ox973 ; editor[OxOa0f5[0xa4]]=CuteEditor_GetScriptProperty ;var Ox6f2=Window_GetElement(window,editor.GetScriptProperty(OxOa0f5[0x84]),true);var editwin,editdoc;try{ editwin=Frame_GetContentWindow(Ox6f2) ; editdoc=editwin[OxOa0f5[0xb]] ;} catch(x){} ;var Ox974=false;var Ox975;var Ox976=false;var Ox977=editor.GetScriptProperty(OxOa0f5[0x60])+OxOa0f5[0xa5]; function Ox978(){if( typeof (window[OxOa0f5[0xa6]])==OxOa0f5[0xa7]){return ;} ; LoadXMLAsync(OxOa0f5[0xa8],Ox977+OxOa0f5[0xa9],Ox979) ;}  ; function Ox979(Ox20d){if(Ox20d[OxOa0f5[0xaa]]!=0xc8){ alert(OxOa0f5[0xab]) ;return ;} ; LoadXMLAsync(OxOa0f5[0xac],Ox977+OxOa0f5[0xad]+Ox20d.responseText,Ox97a) ;}  ; function Ox97a(Ox20d){if(Ox20d[OxOa0f5[0xaa]]!=0xc8){ alert(OxOa0f5[0xae]) ;return ;} ; CuteEditorInstallScriptCode(Ox20d.responseText,OxOa0f5[0xa6]) ;if(Ox974){ Ox97b() ;} ;}  ; function Ox97b(){if(Ox976){return ;} ; Ox976=true ; window.CuteEditorImplementation(editor) ;try{ editor[OxOa0f5[0x2d]][OxOa0f5[0xaf]]=OxOa0f5[0xb0] ;} catch(x){} ;try{ editdoc[OxOa0f5[0xb1]][OxOa0f5[0x2d]][OxOa0f5[0xaf]]=OxOa0f5[0xb0] ;} catch(x){} ;var Ox97c=editor.GetScriptProperty(OxOa0f5[0xb2]);if(Ox97c){ editor.Eval(Ox97c) ;} ;}  ; function Ox97d(){if(!Element_Contains(window[OxOa0f5[0xb]].body,editor)){return ;} ;try{ Ox6f2=Window_GetElement(window,editor.GetScriptProperty(OxOa0f5[0x84]),true) ; editwin=Frame_GetContentWindow(Ox6f2) ; editdoc=editwin[OxOa0f5[0xb]] ;var y=editdoc[OxOa0f5[0xb1]];} catch(x){ setTimeout(Ox97d,0x64) ;return ;} ;if(!editdoc[OxOa0f5[0xb1]]){ setTimeout(Ox97d,0x64) ;return ;} ;if(!Ox974){ Ox6f2[OxOa0f5[0x2d]][OxOa0f5[0x2c]]=OxOa0f5[0xb3] ;if(Browser_IsOpera()){ editdoc[OxOa0f5[0xb1]][OxOa0f5[0xb4]]=true ;} else {if(Browser_IsGecko()){ editdoc[OxOa0f5[0xb1]][OxOa0f5[0x2f]]=OxOa0f5[0xb5] ;} ; editdoc[OxOa0f5[0xb6]]=OxOa0f5[0x3b] ;} ; Ox974=true ; setTimeout(Ox97d,0x32) ;return ;} ;if( typeof (window[OxOa0f5[0xa6]])==OxOa0f5[0xa7]){ Ox97b() ;} else {try{ editdoc[OxOa0f5[0xb1]][OxOa0f5[0x2d]][OxOa0f5[0xaf]]=OxOa0f5[0xb7] ;} catch(x){} ;} ;}  ;var Ox97e=0x0;var Ox42=CuteEditor_Find_DisplayNone(editor);if(Ox42){ function Ox97f(){if(Ox42[OxOa0f5[0x2d]][OxOa0f5[0x2c]]!=OxOa0f5[0x36]){ window.clearInterval(Ox97e) ; Ox97e=OxOa0f5[0x11] ; CuteEditorInitialize(Ox972,Ox973) ;} ;}  ; Ox97e=setInterval(Ox97f,0x3e8) ;} else { CuteEditor_BasicInitialize(editor) ; Ox978() ; Ox97d() ;} ; function CuteEditor_Find_DisplayNone(element){var Ox981;for(var Ox42=element;Ox42!=null;Ox42=Ox42[OxOa0f5[0x21]]){if(Ox42[OxOa0f5[0x2d]]&&Ox42[OxOa0f5[0x2d]][OxOa0f5[0x2c]]==OxOa0f5[0x36]){ Ox981=Ox42 ;break ;} ;} ;return Ox981;}  ;}  ; function CuteEditorInstallScriptCode(Ox91a,Ox91b){ eval(Ox91a) ; window[Ox91b]=eval(Ox91b) ;}  ; window[OxOa0f5[0xb8]]=CuteEditorInitialize ;





