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
	return '<embed src="'+u+'" width="'+w+'" height="'+h+'" type="'+t+'" autostart="'+(a ? 'true' : 'false')+'" '+c+'></embed>';
}