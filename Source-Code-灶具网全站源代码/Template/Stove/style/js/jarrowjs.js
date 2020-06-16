$ID = function(el){
	return document.getElementById(el);
};

function Show_Ser_Node(objStr,NowNum,MaxNum){
var obj;
	for(var i=0;i<=MaxNum;i++){
		obj = $ID(objStr + i);
		if(obj!=null){
			if($(obj).css("display")=='none' && NowNum==i){
				$(obj).slideDown("slow");
			}
			if($(obj).css("display")!='none' && NowNum!=i){
				$(obj).slideUp("slow");
			}
		}
	}
}

function ShowVideo(){
	var Divobj = $ID(arguments[0])
	Divobj.style.display = 'block';
	if (document.all){
		Divobj.style.pixelTop = document.documentElement.scrollTop+170;
	}else{
		Divobj.style.top=document.documentElement.scrollTop+ 170 + "px";
	}
	Divobj.style.pixelLeft = document.body.clientWidth/2 - 250;
	Divobj.innerHTML = PlayWmp(arguments[1],500,350) + "<div style=\"margin:auto; text-align:center;\"><br><input type=\"button\" value=\"关闭\" onclick=\"CloseDiv('"+arguments[0]+"')\"/></div>";
}

function CloseDiv(){
	var Divobj = $ID(arguments[0]);
	Divobj.style.display = 'none';
	Divobj.innerHTML = '';
}

function GetObjHref(){
	var NowUrl,marker,hrefArr=new Array();
	var Obj = $ID(arguments[0]).getElementsByTagName("a");
	NowUrl = document.location + "";
	marker = NowUrl.indexOf("#");
	if(marker>0){
		NowUrl = NowUrl.replace(NowUrl.substring(marker,NowUrl.length),"");
	}
	for (var i=0;i<Obj.length;i++) {
		hrefArr[i] = Obj[i].href.replace(NowUrl+"#","");
	}
	return hrefArr;
}

function openwindow(url,name,iWidth,iHeight)
 {
  var url;                                 //转向网页的地址;
  var name;                           //网页名称，可为空;
  var iWidth;                          //弹出窗口的宽度;
  var iHeight;                        //弹出窗口的高度;
  var iTop = (window.screen.availHeight-30-iHeight)/2;       //获得窗口的垂直位置;
  var iLeft = (window.screen.availWidth-10-iWidth)/2;           //获得窗口的水平位置;
  window.open(url,name,'height='+iHeight+',,innerHeight='+iHeight+',width='+iWidth+',innerWidth='+iWidth+',top='+iTop+',left='+iLeft+',toolbar=no,menubar=no,scrollbars=auto,resizeable=no,location=no,status=no');
 }

function sethome(){
this.homepage.style.behavior='url(#default#homepage)';this.homepage.sethomepage("http://"+document.domain);
}

function checkform(){
var i
var errtxt1=arguments[0];
var errtxt2=arguments[1];
var errtxt3=arguments[2];
		for(i=3;i<arguments.length;i++){
				//alert(objname+e);
				checkobj=$ID(arguments[i]);
				if(checkobj){
					switch (arguments[i]){
					case "Email" :
						if (checkspace(checkobj.value)){alert(errtxt1+checkobj.title+"!!");checkobj.focus();return false;}
						if (checkmail(checkobj)==false){alert(errtxt2+checkobj.title+errtxt3+"!!");checkobj.focus();return false;};
						break;
					case "UserName" :
						if(isPasswd(checkobj.value)==false){
							alert(errtxt2+checkobj.title+errtxt3+'！\n只能输入5-20个以字母开头、可带数字、“_”、“.”的字串, numbers, including,"_","-"');
							checkobj.focus();
							return false;
							}
						break;
					case "Password" :
						if(isPasswd(checkobj.value)==false){
							alert(errtxt2+checkobj.title+errtxt3+'！\n只能输入6-20个字母、数字、下划线');
							checkobj.focus();
							return false;
							}
						break;
					case "Password1" :
						if(isPasswd(checkobj.value)==false){
							alert(errtxt2+checkobj.title+errtxt3+'！\n只能输入6-20个字母、数字、下划线');
							checkobj.focus();
							return false;
							}
						break;
					case "PwdConfirm" :
						if(checkobj.value!=$ID('Password1').value){
							alert('输入密码两次不一致！');
							checkobj.focus();
							return false;
							}
						break;
					case "Bulid":
						if(strDateTime(checkobj.value)==false){
							alert(errtxt2+checkobj.title+errtxt3+'！\n如：2008-12-16 16:04:04');
							checkobj.focus();
							return false;
							}
						break;
					case "QQ":
						if(isQQ(checkobj.value)==false && checkobj.value!='游戏中查询'){
							alert(errtxt2+checkobj.title+errtxt3+'！');
							checkobj.focus();
							return false;
							}
						break;
					case "phone" :
					case "fax" :
						if(isTel(checkobj.value)==false){
							alert(errtxt2+checkobj.title+errtxt3+'！\n只能输入数字和 "+","-"');
							checkobj.focus();
							return false;
							}
						break;
					case "mobile" :
						if(isMobile(checkobj.value)==false){
							alert(errtxt2+checkobj.title+errtxt3+'！\n只能输入数字和 "+","-"');
							checkobj.focus();
							return false;
							}
						break;
					}
					if (checkspace(checkobj.value)){alert(errtxt1+checkobj.title+"!!");checkobj.focus();return false;}
				}
		}
//$ID("mailcontent").value=$ID("sendfrom").innerHTML;
}

function checkmail(mailobj,errtxt){
	if (mailobj){
		var re = new RegExp("^([A-Za-z0-9_|-]+[.]*[A-Za-z0-9_|-]+)+@[A-Za-z0-9|-]+([.][A-Za-z0-9|-]+)*[.][A-Za-z0-9]+$","ig");
		{if (!re.test(mailobj.value))
			{
			mailobj.focus();
			return false;
			}
		}
	}
}

function checkspace(checkstr) {
  var str = '';
  for(i = 0; i < checkstr.length; i++) {
    str = str + ' ';
  }
  return (str == checkstr);
}

function isRegisterUserName(s)//只有输入5-20个用字母开头，可以包括数字,"_","-"
{
var patrn=/^[a-zA-Z]{1}([a-zA-Z0-9._]){4,19}$/;
if (!patrn.exec(s)) return false
return true
}

function isPasswd(s){ //只能输入6-20个字母、数字、下划线
var patrn=/^[a-zA-Z0-9]{6,15}$/;
if (!patrn.exec(s)) return false
return true
}
function isQQ(s){ //只能输入6-20个字母、数字、下划线
var patrn=/^[0-9]{6,15}$/;
if (!patrn.exec(s)) return false
return true
}

function isTel(s){
var patrn=/^[+]{0,1}(\d){1,3}[ ]?([-]?((\d)|[ ]){1,12})+$/;
if (!patrn.exec(s)) return false
return true
}

function isMobile(s){
	var patrn=/^[+]{0,1}(\d){1,3}[ ]?([-]?((\d)|[ ]){1,12})+$/;
	if (!patrn.exec(s)) return false
	return true
}

function strDateTime(str){
var reg = /^(\d{1,4})(-|\/)(\d{1,2})\2(\d{1,2}) (\d{1,2}):(\d{1,2}):(\d{1,2})$/; 
var r = str.match(reg); 
if(r==null)return false; 
var d= new Date(r[1], r[3]-1,r[4],r[5],r[6],r[7]); 
return (d.getFullYear()==r[1]&&(d.getMonth()+1)==r[3]&&d.getDate()==r[4]&&d.getHours()==r[5]&&d.getMinutes()==r[6]&&d.getSeconds()==r[7]);
}

function PlayWmp(Vsrc,Vwidth,Vheight){
	var reval;
	reval = "<object id=\"NSPlay\" classid=\"CLSID:6BF52A52-394A-11d3-B153-00C04F79FAA6\" standby=\"Loading Microsoft Windows Media Player components...\" type=\"application/x-oleobject\" align=\"center\" hspace=\"5\" width=\""+ Vwidth +"\" height=\""+ Vheight +"\"> ";
	reval += "        <param name=\"AutoRewind\" value=1> ";
	reval += "        <param NAME=\"url\" value=\""+ Vsrc +"\">";
	reval += "        <param name=\"ShowControls\" value=\"1\"> ";
	reval += "        <param name=\"ShowPositionControls\" value=\"0\"> ";
	reval += "        <param name=\"ShowAudioControls\" value=\"1\"> ";
	reval += "        <param name=\"ShowTracker\" value=\"0\"> ";
	reval += "        <param name=\"ShowDisplay\" value=\"0\"> ";
	reval += "        <param name=\"ShowStatusBar\" value=\"0\"> ";
	reval += "        <param name=\"ShowGotoBar\" value=\"0\">";
	reval += "        <param name=\"PlayCount\" value=\"0\">";
	reval += "        <param name=\"ShowCaptioning\" value=\"0\"> ";
	reval += "        <param name=\"AutoStart\" value=1> ";
	reval += "        <param name=\"Volume\" value=\"50\"> ";
	reval += "        <param name=\"AnimationAtStart\" value=\"0\"> ";
	reval += "        <param name=\"TransparentAtStart\" value=\"0\"> ";
	reval += "        <param name=\"AllowChangeDisplaySize\" value=\"0\"> ";
	reval += "        <param name=\"AllowScan\" value=\"0\">";
	reval += "        <param name=\"stretchToFit\" value=\"1\">";
	reval += "        <param name=\"EnableContextMenu\" value=\"1\"> ";
	reval += "        <param name=\"ClickToPlay\" value=\"0\"> ";
	reval += "<embed src=\""+ Vsrc +"\" align=\"baseline\" border=\"0\" width=\""+ Vwidth +"\" height=\""+ Vheight +"\" type=\"application/x-mplayer2\"";
	reval += "    pluginspage=\"\" name=\"MediaPlayer1\" showcontrols=\"1\" showpositioncontrols=\"0\" showaudiocontrols=\"1\" showtracker=\"1\" showdisplay=\"0\" showstatusbar=\"1\" autosize=\"0\" showgotobar=\"0\" showcaptioning=\"0\" autostart=\"1\" autorewind=\"0\" animationatstart=\"0\" transparentatstart=\"0\" allowscan=\"1\" enablecontextmenu=\"1\" clicktoplay=\"0\" defaultframe=\"datawindow\" invokeurls=\"0\">";
	reval += "</embed>";
	reval += "</object>";
	return reval;
}

function makeStatic() {
	if (document.all){qqdiv.style.pixelTop=document.documentElement.scrollTop+220;}  
	else {eval('document.qqdiv.top=eval(window.pageYOffset+220)');}  
	setTimeout("makeStatic()",0);
}

function showqqdiv(){
	document.write("<div id=\"qqdiv\"><ul>");
//	document.write("<li class=\"qqheader\"></li>");
	document.write("<li class=\"qqnum\"><a target=blank href=tencent://message/?uin=378059236&Site=恒达科技&Menu=yes><img border=\"0\" SRC=http://wpa.qq.com/pa?p=1:378059236:8 alt=\"客户服务\"></a></li>");
	document.write("<li class=\"qqnum\"><a href=\"callto://lisachen41\"><img src=\"http://goodies.skype.com/graphics/skypeme_btn_small_blue.gif\" border=\"0\"></a></li>");
	document.write("<li class=\"qqnum\"><a href=\"callto://utasuki\"><img src=\"http://goodies.skype.com/graphics/skypeme_btn_small_blue.gif\" border=\"0\"></a></li>");
	document.write("<li class=\"qqnum\"><a target=\"_blank\" href=\"http://settings.messenger.live.com/Conversation/IMMe.aspx?invitee=81cbe5210f74eab3@apps.messenger.live.com&mkt=zh-cn\"><img style=\"border-style: none;\" src=\"http://messenger.services.live.com/users/81cbe5210f74eab3@apps.messenger.live.com/presenceimage?mkt=zh-cn\" width=\"16\" height=\"16\" alt=\"English Service\" /><font color=#000000>EnglishService</font></a></script>");
	document.write("<li class=\"qqnum\"><a target=\"_blank\" href=\"  http://settings.messenger.live.com/Conversation/IMMe.aspx?invitee=8f0de1f2242e2fab@apps.messenger.live.com&mkt=zh-cn\"><img style=\"border-style: none;\" src=\"  http://messenger.services.live.com/users/8f0de1f2242e2fab@apps.messenger.live.com/presenceimage?mkt=zh-cn\" width=\"16\" height=\"16\" /></a>&nbsp;<font color=#000000>日本担当者</font></a></script>");
//	document.write("<li><img src=\"images/QQ/kefu_down.gif\" /></li>");
	document.write("</ul></div>");
	makeStatic();
}



function SetFlash(pics,links,texts,focus_width,focus_height,text_height,bgcolor){
	var swf_height,flashurl;
	swf_height=focus_height+text_height;
	flashurl="pixviewer.swf";
	document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="'+ focus_width +'" height="'+ swf_height +'">');
	document.write('<param name="allowScriptAccess" value="sameDomain"><param name="movie" value="' + flashurl + '"><param name="quality" value="high"><param name="bgcolor" value="' + bgcolor + '">');
	document.write('<param name="menu" value="false"><param name=wmode value="opaque">');
	//ؼ
	document.write('<param name="FlashVars" value="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'">');
	document.write('<embed src="' + flashurl + '" wmode="opaque" FlashVars="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'" menu="false" bgcolor="#DADADA" quality="high" width="'+ focus_width +'" height="'+ swf_height +'" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />');
	document.write('</object>');
}
var pics='images/flash1.jpg|images/flash2.jpg|images/flash3.jpg';
var links='#|#|#|#';
var texts='';