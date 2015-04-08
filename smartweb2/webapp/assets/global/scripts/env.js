var Env = function () {
	var DOC = document;
	var ua = navigator.userAgent.toLowerCase(); 
	var check = function(r) {
		return r.test(ua);
	};
	var isOpera = function() {
		return check(/opera/);
	};
	var isChrome = function() {
		return check(/\bchrome\b/);
	};
	var isIE = function() {
		return !isOpera() && check(/msie/);
	};
	var isArray = function(v) {
		return Object.prototype.toString.apply(v) === '[object Array]';
	};
	
	return {
		//判断环境，操作系统、浏览器、是否是https连接等
	    isStrict : DOC.compatMode == "CSS1Compat",
	    isOpera : isOpera(),
	    isChrome : isChrome(),
	    isIE : isIE(),
	    isWindows : check(/windows|win32/),  
	    isMac : check(/macintosh|mac os x/),  
	    isAir : check(/adobeair/),  
	    isLinux : check(/linux/),  
	    isSecure : /^https/i.test(window.location.protocol),
	    isArray : function(v) {
	    	return isArray(v);
	    },
	    isEmpty : function(v, allowBlank) {
	      return v === null || v === undefined || ((isArray(v) && !v.length)) || (!allowBlank ? v === '' : false);  
	    },
	};
}();