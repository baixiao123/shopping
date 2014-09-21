<%@ Page Language="C#" Inherits="CuteEditor.Dialogs.ThumbnailPage" %>

<script runat="server">
override protected void OnInit(EventArgs args)
{
	if(Context.Request.QueryString["Dialog"]=="Standard")
	{
		if(Context.Request.QueryString["IsFrame"]==null)
		{
			string FrameSrc="Thumbnail.aspx?IsFrame=1&"+Request.ServerVariables["QUERY_STRING"];
			CuteEditor.CEU.WriteDialogOuterFrame(Context,"[[AutoThumbnail]]",FrameSrc);
			Context.Response.End();
		}
	}
		base.OnInit(args);
}
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title>[[AutoThumbnail]] </title>		
		<meta http-equiv="Page-Enter" content="blendTrans(Duration=0.1)" />
		<meta http-equiv="Page-Exit" content="blendTrans(Duration=0.1)" />
		<link href='Load.ashx?type=themecss&file=dialog.css&theme=[[_Theme_]]' type="text/css" rel="stylesheet" />
		<script type="text/javascript" src="Load.ashx?type=dialogscript&file=DialogHead.js"></script>
	</head>
	<body style="margin:0px;border-width:0px;padding:4px;">
		<form runat="server" id="Form1">
			<input type="hidden" runat="server" id="hiddenDirectory" name="hiddenDirectory" /> 
			<input type="hidden" runat="server" id="hiddenFile" name="hiddenFile" />
			<input type="hidden" runat="server" enableviewstate="false" id="hiddenAlert" name="hiddenAlert" /> 
			<input type="hidden" runat="server" enableviewstate="false" id="hiddenAction" name="hiddenAction" />
		<table border="0" cellpadding="4" cellspacing="0" width="100%">
			<tr>
				<td>
					<table border="0" cellpadding="1" cellspacing="4" class="normal">
					<tr>
						<td style="white-space:nowrap"  valign="top">
							<fieldset style="height:80px;">
								<table border="0" cellpadding="1" cellspacing="0" class="normal">
									<tr>
										<td style="white-space:nowrap; width:60" >[[Width]]:</td>
										<td>
											<input runat="server" id="inp_width" value="80" maxlength="3" onkeyup="checkConstrains('width');"  onkeypress="return CancelEventIfNotDigit()" style="WIDTH : 70px" name="inp_width" />
										</td>
										<td rowspan="2" align="right" valign="middle"><img src="Load.ashx?type=image&file=locked.gif" id="imgLock" width="25" height="32" title="[[ConstrainProportions]]" /></td>
									</tr>
									<tr>
										<td>[[Height]]:</td>
										<td>
											<input runat="server" id="inp_height" value="80" maxlength="3" onkeyup="checkConstrains('height');"  onkeypress="return CancelEventIfNotDigit()" style="WIDTH : 70px" name="inp_height" />
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<input type="checkbox" id="constrain_prop" checked="checked" onclick="javascript:toggleConstrains();" />
											 [[ConstrainProportions]]
										</td>
									</tr>
								</table>
							</fieldset>		
						</td>
						<td valign="top" style="white-space:nowrap" >
							<div style="width:100px; height:80px; vertical-align:top;overflow:hidden;BACKGROUND-COLOR: #ffffff;BORDER-RIGHT: buttonhighlight 1px solid;BORDER-TOP: buttonshadow 1px solid;BORDER-LEFT: buttonshadow 1px solid;BORDER-BOTTOM: buttonhighlight 1px solid;">
								<img alt="" id="img_demo" src="Load.ashx?type=image&file=1x1.gif" />
							</div>
						</td>
					</tr>	
					<tr>
						<td>
							<div style="margin-top:8px;text-align:center">
								<asp:Button id="okButton" Text="  [[OK]]  " CssClass="formbutton" Runat="server" OnClick="thumbnailButton_Click" />
								&nbsp;&nbsp;
								<input type="button" value="[[Cancel]]" class="formbutton" onclick="top.returnValue=false;top.close()" />
							</div>
						</td>
					</tr>				
				</table>
			</td>
		</tr>
		</table>
	</form>			
	</body>
</html>
	
		<script type="text/javascript">
			var OxOc76b=["src","img_demo","inp_width","inp_height","hiddenFile","hiddenAlert","hiddenDirectory","hiddenAction","onload","value","","width","height","[[ImagetooSmall]]","dir","imgLock","constrain_prop","checked","Load.ashx?type=image\x26file=locked.gif","Load.ashx?type=image\x26file=1x1.gif","preview_image","DIV","cssText","style","position:absolute","body","offsetWidth","offsetHeight","length"];var obj=Window_GetDialogArguments(window);var src=obj[OxOc76b[0x0]];var img_demo=document.getElementById(OxOc76b[0x1]);var inp_width=document.getElementById(OxOc76b[0x2]);var inp_height=document.getElementById(OxOc76b[0x3]);var hiddenFile=Window_GetElement(window,OxOc76b[0x4],true);var hiddenAlert=Window_GetElement(window,OxOc76b[0x5],true);var hiddenDirectory=Window_GetElement(window,OxOc76b[0x6],true);var hiddenAction=Window_GetElement(window,OxOc76b[0x7],true);var defaultwidth=<%= secset.ThumbnailWidth %>;var defaultheight=<%= secset.ThumbnailHeight %>; window[OxOc76b[0x8]]=reset_hiddens ; function reset_hiddens(){if(hiddenAction[OxOc76b[0x9]]!=OxOc76b[0xa]){if(hiddenAlert[OxOc76b[0x9]]){ alert(hiddenAlert.value) ;} ; Window_SetDialogReturnValue(window,hiddenAction.value) ; Window_CloseDialog(window) ;} else { hiddenAlert[OxOc76b[0x9]]=OxOc76b[0xa] ; hiddenAction[OxOc76b[0x9]]=OxOc76b[0xa] ;} ;}  ; SyncToView() ; function SyncToView(){if(src){var img= new Image(); img[OxOc76b[0x0]]=src ; img_demo[OxOc76b[0x0]]=src ;var p1=parseInt(img[OxOc76b[0xb]]/defaultwidth);var Ox6b=parseInt(img[OxOc76b[0xc]]/defaultheight);if(p1>Ox6b){if(img[OxOc76b[0xb]]<defaultwidth){ alert(OxOc76b[0xd]) ; inp_width[OxOc76b[0x9]]=img[OxOc76b[0xb]] ; inp_height[OxOc76b[0x9]]=img[OxOc76b[0xc]] ;} else { inp_width[OxOc76b[0x9]]=defaultwidth ;var Ox6c=parseInt(defaultwidth*img[OxOc76b[0xc]]/img.width); inp_height[OxOc76b[0x9]]=Ox6c ;} ;} else {if(img[OxOc76b[0xc]]<defaultheight){ alert(OxOc76b[0xd]) ; inp_width[OxOc76b[0x9]]=img[OxOc76b[0xb]] ; inp_height[OxOc76b[0x9]]=img[OxOc76b[0xc]] ;} else { inp_height[OxOc76b[0x9]]=defaultheight ;var Ox6d=parseInt(defaultwidth*img[OxOc76b[0xb]]/img.height); inp_width[OxOc76b[0x9]]=Ox6d ;} ;} ; hiddenFile[OxOc76b[0x9]]=src ; hiddenDirectory[OxOc76b[0x9]]=obj[OxOc76b[0xe]] ; do_preview() ;} ;}  ; function toggleConstrains(){var Ox6f=document.getElementById(OxOc76b[0xf]);var Ox70=document.getElementById(OxOc76b[0x10]);if(Ox70[OxOc76b[0x11]]){ Ox6f[OxOc76b[0x0]]=OxOc76b[0x12] ; checkConstrains(OxOc76b[0xb]) ;} else { Ox6f[OxOc76b[0x0]]=OxOc76b[0x13] ;} ;}  ;var checkingConstrains=false; function checkConstrains(Ox73){if(checkingConstrains){return ;} ; checkingConstrains=true ;try{var Ox70=document.getElementById(OxOc76b[0x10]);if(Ox70[OxOc76b[0x11]]){var Ox74=document.getElementById(OxOc76b[0x14]);if(Ox74){var Ox75=document.createElement(OxOc76b[0x15]); Ox75[OxOc76b[0x17]][OxOc76b[0x16]]=OxOc76b[0x18] ; document[OxOc76b[0x19]].appendChild(Ox75) ; Ox75.appendChild(Ox74) ; Ox74.removeAttribute(OxOc76b[0xb]) ; Ox74.removeAttribute(OxOc76b[0xc]) ; Ox74[OxOc76b[0x17]][OxOc76b[0xb]]=OxOc76b[0xa] ; Ox74[OxOc76b[0x17]][OxOc76b[0xc]]=OxOc76b[0xa] ; original_width=Ox74[OxOc76b[0x1a]] ; original_height=Ox74[OxOc76b[0x1b]] ; Ox75.removeNode(true) ;} else {var Ox76= new Image(); Ox76[OxOc76b[0x0]]=src ; original_width=Ox76[OxOc76b[0xb]] ; original_height=Ox76[OxOc76b[0xc]] ;} ;if((original_width>0x0)&&(original_height>0x0)){ width=inp_width[OxOc76b[0x9]] ; height=inp_height[OxOc76b[0x9]] ;if(Ox73==OxOc76b[0xb]){if(width[OxOc76b[0x1c]]==0x0||isNaN(width)){ inp_width[OxOc76b[0x9]]=OxOc76b[0xa] ; inp_height[OxOc76b[0x9]]=OxOc76b[0xa] ;} else { height=parseInt(width*original_height/original_width) ; inp_height[OxOc76b[0x9]]=height ;} ;} ;if(Ox73==OxOc76b[0xc]){if(height[OxOc76b[0x1c]]==0x0||isNaN(height)){ inp_width[OxOc76b[0x9]]=OxOc76b[0xa] ; inp_height[OxOc76b[0x9]]=OxOc76b[0xa] ;} else { width=parseInt(height*original_width/original_height) ; inp_width[OxOc76b[0x9]]=width ;} ;} ;} ;} ; do_preview() ;} finally{ checkingConstrains=false ;} ;}  ; function do_preview(){ img_demo[OxOc76b[0xb]]=inp_width[OxOc76b[0x9]] ; img_demo[OxOc76b[0xc]]=inp_height[OxOc76b[0x9]] ;}  ;	
			
		</script>

