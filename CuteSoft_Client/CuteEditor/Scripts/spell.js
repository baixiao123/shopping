var OxO1d7d=["INPUT","TEXTAREA","DIV","SPAN","","contentWindow","innerHTML","body","document","length","type","text","id","isContentEditable","showModalDialog","?","?Modal=true","\x26Modal=true","dialogHeight:340px; dialogWidth:395px; edge:Raised; center:Yes; help:No; resizable:Yes; status:No; scroll:No","newWindow","height=300,width=400,scrollbars=no,resizable=no,toolbars=no,status=no,menubar=no,location=no","ElementIndex","dialogArguments","window","opener","value","SpellMode","SpellingForm","end","suggest","start","checkElements","innerText","StatusText","Spell Checking Text ...","CurrentText","WordIndex","Spell Check Complete","selectedIndex","options","ReplacementWord","form"];var showCompleteAlert=true;var tagGroup= new Array(OxO1d7d[0x0],OxO1d7d[0x1],OxO1d7d[0x2],OxO1d7d[0x3]);var checkElements= new Array(); function getText(Ox178){var Ox179=document.getElementById(checkElements[Ox178]);var Ox17a=OxO1d7d[0x4];var Ox17b=document.getElementById(Ox179.id);if(Ox17b[OxO1d7d[0x5]]){ Ox17a=Ox17b[OxO1d7d[0x5]][OxO1d7d[0x8]][OxO1d7d[0x7]][OxO1d7d[0x6]] ;} else { Ox17a=Ox17b[OxO1d7d[0x8]][OxO1d7d[0x7]][OxO1d7d[0x6]] ;} ;return Ox17a;}  ; function setText(Ox178,Ox17d){var Ox179=document.getElementById(checkElements[Ox178]);var Ox17b=document.getElementById(Ox179.id);if(Ox17b[OxO1d7d[0x5]]){ Ox17b[OxO1d7d[0x5]][OxO1d7d[0x8]][OxO1d7d[0x7]][OxO1d7d[0x6]]=Ox17d ;} else { Ox17b[OxO1d7d[0x8]][OxO1d7d[0x7]][OxO1d7d[0x6]]=Ox17d ;} ;}  ; function checkSpelling(){ checkElements= new Array() ;for(var i=0x0;i<tagGroup[OxO1d7d[0x9]];i++){var Ox17f=tagGroup[i];var Ox180=document.getElementsByTagName(Ox17f);for(var x=0x0;x<Ox180[OxO1d7d[0x9]];x++){if((Ox17f==OxO1d7d[0x0]&&Ox180[x][OxO1d7d[0xa]]==OxO1d7d[0xb])||Ox17f==OxO1d7d[0x1]){ checkElements[checkElements[OxO1d7d[0x9]]]=Ox180[x][OxO1d7d[0xc]] ;} else {if((Ox17f==OxO1d7d[0x2]||Ox17f==OxO1d7d[0x3])&&Ox180[x][OxO1d7d[0xd]]){ checkElements[checkElements[OxO1d7d[0x9]]]=Ox180[x][OxO1d7d[0xc]] ;} ;} ;} ;} ; openSpellChecker() ;}  ; function checkSpellingById(Ox93,Ox182){ checkElements= new Array() ; checkElements[checkElements[OxO1d7d[0x9]]]=Ox93 ; openSpellChecker(Ox182) ;}  ; function checkElementSpelling(Ox179){ checkElements= new Array() ; checkElements[checkElements[OxO1d7d[0x9]]]=Ox179[OxO1d7d[0xc]] ; openSpellChecker() ;}  ; function openSpellChecker(Ox182){if(window[OxO1d7d[0xe]]){var Ox185;if(Ox182.indexOf(OxO1d7d[0xf])==-0x1){ Ox185=OxO1d7d[0x10] ;} else { Ox185=OxO1d7d[0x11] ;} ;var Ox186=window.showModalDialog(Ox182+Ox185,window,OxO1d7d[0x12]);} else {var Ox187=window.open(Ox182,OxO1d7d[0x13],OxO1d7d[0x14]);} ;}  ;var iElementIndex=-0x1;var parentWindow; function initialize(){ iElementIndex=parseInt(document.getElementById(OxO1d7d[0x15]).value) ;if(parent[OxO1d7d[0x17]][OxO1d7d[0x16]]){ parentWindow=parent[OxO1d7d[0x17]][OxO1d7d[0x16]] ;} else {if(top[OxO1d7d[0x18]]){ parentWindow=top[OxO1d7d[0x18]] ;} ;} ;var Ox18b=document.getElementById(OxO1d7d[0x1a])[OxO1d7d[0x19]];switch(Ox18b){case OxO1d7d[0x1e]:break ;case OxO1d7d[0x1d]: updateText() ;break ;case OxO1d7d[0x1c]: updateText() ;default:if(loadText()){ document.getElementById(OxO1d7d[0x1b]).submit() ;} else { endCheck() ;} ;break ;;;;;} ;}  ; function loadText(){if(!parentWindow[OxO1d7d[0x8]]){return false;} ;for( ++iElementIndex ;iElementIndex<parentWindow[OxO1d7d[0x1f]][OxO1d7d[0x9]];iElementIndex++){var Ox18d=parentWindow.getText(iElementIndex);if(Ox18d[OxO1d7d[0x9]]>0x0){ updateSettings(Ox18d,0x0,iElementIndex,OxO1d7d[0x1e]) ; document.getElementById(OxO1d7d[0x21])[OxO1d7d[0x20]]=OxO1d7d[0x22] ;return true;} ;} ;return false;}  ; function updateSettings(Ox18f,Ox190,Ox191,Ox192){ document.getElementById(OxO1d7d[0x23])[OxO1d7d[0x19]]=Ox18f ; document.getElementById(OxO1d7d[0x24])[OxO1d7d[0x19]]=Ox190 ; document.getElementById(OxO1d7d[0x15])[OxO1d7d[0x19]]=Ox191 ; document.getElementById(OxO1d7d[0x1a])[OxO1d7d[0x19]]=Ox192 ;}  ; function updateText(){if(!parentWindow[OxO1d7d[0x8]]){return false;} ;var Ox18d=document.getElementById(OxO1d7d[0x23])[OxO1d7d[0x19]]; parentWindow.setText(iElementIndex,Ox18d) ;}  ; function endCheck(){if(showCompleteAlert){ alert(OxO1d7d[0x25]) ;} ; closeWindow() ;}  ; function closeWindow(){ top.close() ;}  ; function changeWord(Ox179){var Ox197=Ox179[OxO1d7d[0x26]]; Ox179[OxO1d7d[0x29]][OxO1d7d[0x28]][OxO1d7d[0x19]]=Ox179[OxO1d7d[0x27]][Ox197][OxO1d7d[0x19]] ;}  ;




