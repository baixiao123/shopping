var OxO6a71=["onload","contentWindow","idSource","innerHTML","body","document","","designMode","on","contentEditable","fontFamily","style","Tahoma","fontSize","11px","color","black","background","white","length","\x22","\x3C$1$3"," ","\x26nbsp;","$1","\x3Ch$1\x3E","\x3C$1\x3E$2\x3C/$1\x3E","\x27"];var editor=Window_GetDialogArguments(window); function cancel(){ Window_CloseDialog(window) ;}  ; window[OxO6a71[0x0]]=function (){var iframe=document.getElementById(OxO6a71[0x2])[OxO6a71[0x1]]; iframe[OxO6a71[0x5]][OxO6a71[0x4]][OxO6a71[0x3]]=OxO6a71[0x6] ; iframe[OxO6a71[0x5]][OxO6a71[0x7]]=OxO6a71[0x8] ; iframe[OxO6a71[0x5]][OxO6a71[0x4]][OxO6a71[0x9]]=true ; iframe[OxO6a71[0x5]][OxO6a71[0x4]][OxO6a71[0xb]][OxO6a71[0xa]]=OxO6a71[0xc] ; iframe[OxO6a71[0x5]][OxO6a71[0x4]][OxO6a71[0xb]][OxO6a71[0xd]]=OxO6a71[0xe] ; iframe[OxO6a71[0x5]][OxO6a71[0x4]][OxO6a71[0xb]][OxO6a71[0xf]]=OxO6a71[0x10] ; iframe[OxO6a71[0x5]][OxO6a71[0x4]][OxO6a71[0xb]][OxO6a71[0x11]]=OxO6a71[0x12] ; iframe.focus() ;}  ; function insertContent(){var iframe=document.getElementById(OxO6a71[0x2])[OxO6a71[0x1]];var Oxc7=iframe[OxO6a71[0x5]][OxO6a71[0x4]][OxO6a71[0x3]];if(Oxc7&&Oxc7[OxO6a71[0x13]]>0x0){ editor.PasteHTML(_RemoveWord(Oxc7)) ; Window_CloseDialog(window) ;} ;}  ; function _RemoveWord(Ox2b){ Ox2b=Ox2b.replace(/<[\/]?(base|meta|link|style|font|st1|shape|path|lock|imagedata|stroke|formulas|xml|del|ins|[ovwxp]:\w+)[^>]*?>/gi,OxO6a71[0x6]) ; Ox2b=Ox2b.replace(/\s*mso-[^:]+:[^;"]+;?/gi,OxO6a71[0x6]) ; Ox2b=Ox2b.replace(/<!--[\s\S]*?-->/gi,OxO6a71[0x6]) ; Ox2b=Ox2b.replace(/\s*MARGIN: 0cm 0cm 0pt\s*;/gi,OxO6a71[0x6]) ; Ox2b=Ox2b.replace(/\s*MARGIN: 0cm 0cm 0pt\s*"/gi,OxO6a71[0x14]) ; Ox2b=Ox2b.replace(/\s*TEXT-INDENT: 0cm\s*;/gi,OxO6a71[0x6]) ; Ox2b=Ox2b.replace(/\s*TEXT-INDENT: 0cm\s*"/gi,OxO6a71[0x14]) ; Ox2b=Ox2b.replace(/\s*TEXT-ALIGN: [^\s;]+;?"/gi,OxO6a71[0x14]) ; Ox2b=Ox2b.replace(/\s*PAGE-BREAK-BEFORE: [^\s;]+;?"/gi,OxO6a71[0x14]) ; Ox2b=Ox2b.replace(/\s*FONT-VARIANT: [^\s;]+;?"/gi,OxO6a71[0x14]) ; Ox2b=Ox2b.replace(/\s*tab-stops:[^;"]*;?/gi,OxO6a71[0x6]) ; Ox2b=Ox2b.replace(/\s*tab-stops:[^"]*/gi,OxO6a71[0x6]) ; Ox2b=Ox2b.replace(/<(\w[^>]*) class=([^ |>]*)([^>]*)/gi,OxO6a71[0x15]) ; Ox2b=Ox2b.replace(/\s*style="\s*"/gi,OxO6a71[0x6]) ; Ox2b=Ox2b.replace(/<SPAN\s*[^>]*>\s* \s*<\/SPAN>/gi,OxO6a71[0x16]) ; Ox2b=Ox2b.replace(/<(\w+)[^>]*\sstyle="[^"]*DISPLAY\s?:\s?none(.*?)<\/\1>/ig,OxO6a71[0x6]) ; Ox2b=Ox2b.replace(/<span\s*[^>]*>\s*&nbsp;\s*<\/span>/gi,OxO6a71[0x17]) ; Ox2b=Ox2b.replace(/<SPAN\s*[^>]*><\/SPAN>/gi,OxO6a71[0x6]) ; Ox2b=Ox2b.replace(/<(\w[^>]*) lang=([^ |>]*)([^>]*)/gi,OxO6a71[0x15]) ; Ox2b=Ox2b.replace(/<SPAN\s*>(.*?)<\/SPAN>/gi,OxO6a71[0x18]) ; Ox2b=Ox2b.replace(/<\/?\w+:[^>]*>/gi,OxO6a71[0x6]) ; Ox2b=Ox2b.replace(/<\!--.*?-->/g,OxO6a71[0x6]) ; Ox2b=Ox2b.replace(/<H\d>\s*<\/H\d>/gi,OxO6a71[0x6]) ; Ox2b=Ox2b.replace(/<(\w[^>]*) language=([^ |>]*)([^>]*)/gi,OxO6a71[0x15]) ; Ox2b=Ox2b.replace(/<(\w[^>]*) onmouseover="([^\"]*)"([^>]*)/gi,OxO6a71[0x15]) ; Ox2b=Ox2b.replace(/<(\w[^>]*) onmouseout="([^\"]*)"([^>]*)/gi,OxO6a71[0x15]) ; Ox2b=Ox2b.replace(/<H(\d)([^>]*)>/gi,OxO6a71[0x19]) ; Ox2b=Ox2b.replace(/<(H\d)><FONT[^>]*>(.*?)<\/FONT><\/\1>/gi,OxO6a71[0x1a]) ; Ox2b=Ox2b.replace(/<(H\d)><EM>(.*?)<\/EM><\/\1>/gi,OxO6a71[0x1a]) ; Ox2b=Ox2b.replace(/<a name="?OLE_LINK\d+"?>((.|[\r\n])*?)<\/a>/gi,OxO6a71[0x18]) ; Ox2b=Ox2b.replace(/<a name="?_Hlt\d+"?>((.|[\r\n])*?)<\/a>/gi,OxO6a71[0x18]) ; Ox2b=Ox2b.replace(/<a name="?_Toc\d+"?>((.|[\r\n])*?)<\/a>/gi,OxO6a71[0x18]) ; Ox2b=Ox2b.replace(/[\\]/gi,OxO6a71[0x14]) ; Ox2b=Ox2b.replace(/[\\]/gi,OxO6a71[0x1b]) ;return Ox2b;}  ;





