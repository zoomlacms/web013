function player(u, w, h, p, a) {
	var w = w ? w : 480;
	var h = h ? h : 400;
	var e = t = c = '';
	if(p == 0) {
		e = 'swf';
	} else if(p == 1) {
		e = 'wma';
	} else if(p == 2) {
		e = 'rm';
	} else {
		e = ext(u);
	}
	if(e == 'rm' || e == 'rmvb' || e == 'ram') {
		t = 'audio/x-pn-realaudio-extend';
	} else if(e == 'wma' || e == 'wmv') {
		t = 'application/x-mplayer2';
		c = 'controls="imagewindow,controlpanel,statusbar"';
	} else {
		if((u.indexOf('.flv')>0 || u.indexOf('.mp4')>0 ) && u.indexOf('?')==-1) return '<object type="application/x-shockwave-flash" data="'+DTPath+'file/flash/vcastr3.swf" width="'+w+'" height="'+h+'" id="vcastr3"><param name="movie" value="'+DTPath+'file/flash/vcastr3.swf"/><param name="wmode" value="transparent"/><param name="allowFullScreen" value="true"/><param name="FlashVars" value="xml=<vcastr><channel><item><source>'+u+'</source><duration></duration><title></title></item></channel><config><isAutoPlay>'+(a ? 'true' : 'false')+'</isAutoPlay><controlPanelBgColor>0x333333</controlPanelBgColor><isShowAbout>false</isShowAbout></config></vcastr>"/></object>';
		t = 'application/x-shockwave-flash';
		c = 'quality="high" extendspage="http://get.adobe.com/flashplayer/" allowfullscreen="true" wmode="transparent"';
	}
	return 'var s5 = new SWFObject("{$CssDir/}swf/FlvPlayer201002.swf","playlist","400","320","7");	s5.addParam("allowfullscreen","true");	s5.addVariable("autostart","false");	s5.addVariable("image","/Template/Stove/style/Images/mo3.jpg");	s5.addVariable("file","+u+");	s5.addVariable("width","400");	s5.addVariable("height","320");	s5.write("player5");';
}