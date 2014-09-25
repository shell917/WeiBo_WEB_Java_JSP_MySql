<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'gongda.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->


<title>deliberate lies - interactive DHTML</title>
<meta name="Author" content="Gerard Ferrandez at http://www.mobanwang.com">
<meta http-equiv="imagetoolbar" content="no">
<style type="text/css">
	html {
		overflow: hidden;
	}
	body {
		position: absolute;
		margin: 0px;
		padding: 0px;
		background: #eee;
		width: 100%;
		height: 100%;
		color: #fff;
		font-family: arial;
		font-size: 0.8em;
	}
	#screen {
		position: absolute;
		width: 100%;
		height: 100%;
		background: #000;
		overflow: hidden;
	}
	#screen img, canvas { 
		position: absolute;
		left: -9999px;
		cursor: pointer;
        image-rendering: optimizeSpeed;

	}
	#screen .href {
		border: #FFF dotted 1px;
	}
	#screen .fog { 
		position: absolute;
		background: #fff;
		opacity: 0.1;
		filter: alpha(opacity=10);
	}
	#command {
		position:absolute;
		left: 1em;
		top: 1em;
		width: 130px;
		z-index: 30000;
		background:#000;
		border: #000 solid 1em;
	}
	#bar {
		position:relative;
		left: 1em;
		top: 1em;
		height: 160px;
	}
	#bar .button { 
		position: absolute;
		background: #222;
		width: 20px;
		height: 20px;
		cursor: pointer;
	}
	#bar .loaded { 
		background: #666;
	}
	#bar .viewed { 
		background: #fff;
	}
	#bar .selected { 
		background: #f00;
	}
	#urlInfo {
		position: absolute;
		background: url(images/r.gif) no-repeat 0 4px;
		visibility: hidden;
		z-index: 30000;
		padding-left: 12px;
		cursor: pointer;
	}
</style>

<script type="text/javascript">
// =============================================================
//           ===== 3D gallery experiment =====
// script written by Gerard Ferrandez - April 5, 2010
// http://www.dhteumeuleu.com
// use under a CC-BY-NC license
// -------------------------------------------------------------
// update: April 17 : added hyperlinks, tweaked z-index
// =============================================================

var m3D = function () {
	/* ---- private vars ---- */
	var diapo = [],
		imb,
		scr,
		bar,
		selected,
		urlInfo,
		imagesPath = "images/",
		camera = {x:0, y:0, z:-650, s:0, fov: 500},
		nw = 0,
		nh = 0;
	/* ==== camera tween methods ==== */
	camera.setTarget = function (c0, t1, p) {
		if (Math.abs(t1 - c0) > .1) {
			camera.s = 1;
			camera.p = 0;
			camera.d = t1 - c0;
			if (p) {
				camera.d *= 2;
				camera.p = 9;
			}
		}
	}
	camera.tween = function (v) {
		if (camera.s != 0) {
			camera.p += camera.s;
			camera[v] += camera.d * camera.p * .01;
			if (camera.p == 10) camera.s = -1;
			else if (camera.p == 0) camera.s = 0;
		}
		return camera.s;
	}
	/* ==== diapo constructor ==== */
	var Diapo = function (n, img, x, y, z) {
		if (img) {
			this.url = img.url;
			this.title = img.title;
			this.color = img.color;
			this.isLoaded = false;
			if (document.createElement("canvas").getContext) {
				/* ---- using canvas in place of images (performance trick) ---- */
				this.srcImg = new Image();
				this.srcImg.src = imagesPath + img.src;
				this.img = document.createElement("canvas");
				this.canvas = true;
				scr.appendChild(this.img);
			} else {
				/* ---- normal image ---- */
				this.img = document.createElement('img');
				this.img.src = imagesPath + img.src;
				scr.appendChild(this.img);
			}
			/* ---- on click event ---- */
			this.img.onclick = function () {
				if (camera.s) return;
				if (this.diapo.isLoaded) {
					if (this.diapo.urlActive) {
						/* ---- jump hyperlink ---- */
						top.location.href = this.diapo.url;
					} else {
						/* ---- target positions ---- */
						camera.tz = this.diapo.z - camera.fov;
						camera.tx = this.diapo.x;
						camera.ty = this.diapo.y;
						/* ---- disable previously selected img ---- */
						if (selected) {
							selected.but.className = "button viewed";
							selected.img.className = "";
							selected.img.style.cursor = "pointer";
							selected.urlActive = false;
							urlInfo.style.visibility = "hidden";
						}
						/* ---- select current img ---- */
						this.diapo.but.className = "button selected";
						interpolation(false);
						selected = this.diapo;
					}
				}
			}
			/* ---- command bar buttons ---- */
			this.but = document.createElement('div');
			this.but.className = "button";
			bar.appendChild(this.but);
			this.but.diapo = this;
			this.but.style.left = Math.round((this.but.offsetWidth  * 1.2) * (n % 4)) + 'px';
			this.but.style.top  = Math.round((this.but.offsetHeight * 1.2) * Math.floor(n / 4)) + 'px';
			this.but.onclick = this.img.onclick;
			imb = this.img;
			this.img.diapo = this;
			this.zi = 25000;
		} else {
			/* ---- transparent div ---- */
			this.img = document.createElement('div');
			this.isLoaded = true;
			this.img.className = "fog";
			scr.appendChild(this.img);
			this.w = 300;
			this.h = 300;
			this.zi = 15000;
		}
		/* ---- object variables ---- */
		this.x = x;
		this.y = y;
		this.z = z;
		this.css = this.img.style;
	}
	/* ==== main 3D animation ==== */
	Diapo.prototype.anim = function () {
		if (this.isLoaded) {
			/* ---- 3D to 2D projection ---- */
			var x = this.x - camera.x;
			var y = this.y - camera.y;
			var z = this.z - camera.z;
			if (z < 20) z += 5000;
			var p = camera.fov / z;
			var w = this.w * p;
			var h = this.h * p;
			/* ---- HTML rendering ---- */
			this.css.left   = Math.round(nw + x * p - w * .5) + 'px';
			this.css.top    = Math.round(nh + y * p - h * .5) + 'px';  
			this.css.width  = Math.round(w) + 'px';
			this.css.height = Math.round(h) + 'px';
			this.css.zIndex = this.zi - Math.round(z);
		} else {
			/* ---- image is loaded? ---- */
			this.isLoaded = this.loading();
		}
	}
	/* ==== onload initialization ==== */
	Diapo.prototype.loading = function () {
		if ((this.canvas && this.srcImg.complete) || this.img.complete) {
			if (this.canvas) {
				/* ---- canvas version ---- */
				this.w = this.srcImg.width;
				this.h = this.srcImg.height;
				this.img.width = this.w;
				this.img.height = this.h;
				var context = this.img.getContext("2d");
				context.drawImage(this.srcImg, 0, 0, this.w, this.h);
			} else {
				/* ---- plain image version ---- */
				this.w = this.img.width;
				this.h = this.img.height;
			}
			/* ---- button loaded ---- */
			this.but.className += " loaded";
			return true;
		}
		return false;
	}
	////////////////////////////////////////////////////////////////////////////
	/* ==== screen dimensions ==== */
	var resize = function () {
		nw = scr.offsetWidth * .5;
		nh = scr.offsetHeight * .5;
	}
	/* ==== disable interpolation during animation ==== */
	var interpolation = function (bicubic) {
		var i = 0, o;
		while( o = diapo[i++] ) {
			if (o.but) {
				o.css.msInterpolationMode = bicubic ? 'bicubic' : 'nearest-neighbor'; // makes IE8 happy
				o.css.imageRendering = bicubic ? 'optimizeQuality' : 'optimizeSpeed'; // does not really work...
			}
		}
	}
	/* ==== init script ==== */
	var init = function (data) {
		/* ---- containers ---- */
		scr = document.getElementById("screen");
		bar = document.getElementById("bar");
		urlInfo = document.getElementById("urlInfo");
		resize();
		/* ---- loading images ---- */
		var i = 0, 
		    o,
			n = data.length;
		while( o = data[i++] ) {
			/* ---- images ---- */
			var x = 1000 * ((i % 4) - 1.5);
			var y = Math.round(Math.random() * 4000) - 2000;
			var z = i * (5000 / n);
			diapo.push( new Diapo(i - 1, o, x, y, z));
			/* ---- transparent frames ---- */
			var k = diapo.length - 1;
			for (var j = 0; j < 3; j++) {
				var x = Math.round(Math.random() * 4000) - 2000;
				var y = Math.round(Math.random() * 4000) - 2000;
				diapo.push( new Diapo(k, null, x, y, z + 100));
			}
		}
		/* ---- start engine ---- */
		run();
	}
	////////////////////////////////////////////////////////////////////////////
	/* ==== main loop ==== */
	var run = function () {
		/* ---- x axis move ---- */
		if (camera.tx) {
			if (!camera.s) camera.setTarget(camera.x, camera.tx);
			var m = camera.tween('x');
			if (!m) camera.tx = 0;
		/* ---- y axis move ---- */
		} else if (camera.ty) {
			if (!camera.s) camera.setTarget(camera.y, camera.ty); 
			var m = camera.tween('y');
			if (!m) camera.ty = 0;
		/* ---- z axis move ---- */
		} else if (camera.tz) {
			if (!camera.s) camera.setTarget(camera.z, camera.tz);
			var m = camera.tween('z');
			if (!m) {
				/* ---- animation end ---- */
				camera.tz = 0;
				interpolation(true);
				/* ---- activate hyperlink ---- */
				if (selected.url) {
					selected.img.style.cursor = "pointer";
					selected.urlActive = true;
					selected.img.className = "href";
					urlInfo.diapo = selected;
					urlInfo.onclick = selected.img.onclick;
					urlInfo.innerHTML = selected.title || selected.url;
					urlInfo.style.visibility = "visible";
					urlInfo.style.color = selected.color || "#fff";
					urlInfo.style.top = Math.round(selected.img.offsetTop + selected.img.offsetHeight - urlInfo.offsetHeight - 5) + "px";
					urlInfo.style.left = Math.round(selected.img.offsetLeft + selected.img.offsetWidth - urlInfo.offsetWidth - 5) + "px";
				} else {
					selected.img.style.cursor = "default";
				}
			}
		}
		/* ---- anim images ---- */
		var i = 0, o;
		while( o = diapo[i++] ) o.anim();
		/* ---- loop ---- */
		setTimeout(run, 32);
	}
	return {
		////////////////////////////////////////////////////////////////////////////
		/* ==== initialize script ==== */
		init : init
	}
}();

</script>




  </head>
  
<body>
<div id="screen" style="position: absolute; left: 0px; top: 0px; height: 566px; width: 1037px">
	<div id="command">

		<h1>太原理工大学</h1>
		 超炫3D全景展示<div id="bar"></div>
	</div>
	<div id="urlInfo"></div>
</div>

<script type="text/javascript">
/* ==== start script ==== */
setTimeout(function() {
	m3D.init(
		[ 
			{ src: 'tyut1.jpg' },
			{ src: 'tyut2.jpg' },
			{ src: 'tyut3.jpg' },
			{ src: 'tyut4.jpg' },
			{ src: 'tyut5.jpg' },
			{ src: 'tyut6.jpg' },
			{ src: 'tyut7.jpg' },
			{ src: 'tyut8.jpg' },
			{ src: 'tyut9.jpg' },
			{ src: 'tyut10.jpg' },
			{ src: 'tyut11.jpg' },
			{ src: 'tyut12.jpg' },
			{ src: 'tyut13.jpg' },
			{ src: 'tyut14.jpg' },
			{ src: 'tyut15.jpg' },
			{ src: 'tyut16.jpg' },
			{ src: 'tyut17.jpg' },
			{ src: 'tyut18.jpg' },
			{ src: 'tyut19.jpg' },
			{ src: 'tyut20.jpg' },
			{ src: 'tyut21.jpg' },
			{ src: 'tyut22.jpg' },
			{ src: 'tyut23.jpg' },
			{ src: 'tyut24.jpg' },
			{ src: 'tyut25.jpg' },
			{ src: 'tyut26.jpg' },
			{ src: 'tyut27.jpg' },
			{ src: 'tyut28.jpg' },
			{ src: 'tyut29.jpg' },
			{ src: 'tyut30.jpg' },
			{ src: 'tyut31.jpg' },
			{ src: 'tyut32.jpg' },
		]
	);
}, 500);
</script>
</body>
</html>
