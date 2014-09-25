<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'alixixi.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta name="Copyright" content="�������� http://www.alixixi.com/" />
<meta name="keywords" content="JS����,������,JS������,JS��Ч����" />
<meta name="description" content="�˴�������Ϊ����3D��ƬչʾЧ��������վ�����ô��룬�����������������ʰ�������JS����Ƶ����" />
<title>����3D��ƬչʾЧ��_��������</title>
<style type="text/css">
	html {
		overflow: hidden;
	}
	body {
		position: absolute;
		margin: 0px;
		padding: 0px;
		background: #111;
		width: 100%;
		height: 100%;
	}
	#screen {
		position: absolute;
		left: 10%;
		top: 10%;
		width: 80%;
		height: 80%;
		background: #000;
	}
	#screen img {
		position: absolute;
		cursor: pointer;
		visibility: hidden;
		width: 0px;
		height: 0px;
	}
	#screen .tvover {
		border: solid #876;
		opacity: 1;
		filter: alpha(opacity=100);
	}
	#screen .tvout {
		border: solid #fff;
		opacity: 0.7;
	}
	#bankImages {
		display: none;
	}
</style>

<script type="text/javascript">
var Library = {};
Library.ease = function () {
	this.target = 0;
	this.position = 0;
	this.move = function (target, speed)
	{
		this.position += (target - this.position) * speed;
	}
}

var tv = {
	/* ==== variables ==== */
	O : [],
	screen : {},
	grid : {
		size       : 4,  // 4x4 grid
		borderSize : 6,  // borders size
		zoomed     : false
	},
	angle : {
		x : new Library.ease(),
		y : new Library.ease()
	},
	camera : {
		x    : new Library.ease(),
		y    : new Library.ease(),
		zoom : new Library.ease(),
		focalLength : 750 // camera Focal Length
	},

	/* ==== init script ==== */
	init : function ()
	{
		this.screen.obj = document.getElementById('screen');
		var img = document.getElementById('bankImages').getElementsByTagName('img');
		this.screen.obj.onselectstart = function () { return false; }
		this.screen.obj.ondrag        = function () { return false; }
		/* ==== create images grid ==== */
		var ni = 0;
		var n = (tv.grid.size / 2) - .5;
		for (var y = -n; y <= n; y++)
		{
			for (var x = -n; x <= n; x++)
			{
				/* ==== create HTML image element ==== */
				var o = document.createElement('img');
				var i = img[(ni++) % img.length];
				o.className = 'tvout';
				o.src = i.src;
				tv.screen.obj.appendChild(o);
				/* ==== 3D coordinates ==== */
				o.point3D = {
					x  : x,
					y  : y,
					z  : new Library.ease()
				};
				/* ==== push object ==== */
				o.point2D = {};
				o.ratioImage = 1;
				tv.O.push(o);
				/* ==== on mouse over event ==== */
				o.onmouseover = function ()
				{
					if (!tv.grid.zoomed)
					{
						if (tv.o)
						{
							/* ==== mouse out ==== */
							tv.o.point3D.z.target = 0;
							tv.o.className = 'tvout';
						}
						/* ==== mouse over ==== */
						this.className = 'tvover';
						this.point3D.z.target = -.5;
						tv.o = this;
					}
				}
				/* ==== on click event ==== */
				o.onclick = function ()
				{
					if (!tv.grid.zoomed)
					{
						/* ==== zoom in ==== */
						tv.camera.x.target = this.point3D.x;
						tv.camera.y.target = this.point3D.y;
						tv.camera.zoom.target = tv.screen.w * 1.25;
						tv.grid.zoomed = this;
					} else {
						if (this == tv.grid.zoomed){
							/* ==== zoom out ==== */
							tv.camera.x.target = 0;
							tv.camera.y.target = 0;
							tv.camera.zoom.target = tv.screen.w / (tv.grid.size + .1);
							tv.grid.zoomed = false;
						}
					}
				}
				/* ==== 3D transform function ==== */
				o.calc = function ()
				{
					/* ==== ease mouseover ==== */
					this.point3D.z.move(this.point3D.z.target, .5);
					/* ==== assign 3D coords ==== */
					var x = (this.point3D.x - tv.camera.x.position) * tv.camera.zoom.position;
					var y = (this.point3D.y - tv.camera.y.position) * tv.camera.zoom.position;
					var z = this.point3D.z.position * tv.camera.zoom.position;
					/* ==== perform rotations ==== */
					var xy = tv.angle.cx * y  - tv.angle.sx * z;
					var xz = tv.angle.sx * y  + tv.angle.cx * z;
					var yz = tv.angle.cy * xz - tv.angle.sy * x;
					var yx = tv.angle.sy * xz + tv.angle.cy * x;
					/* ==== 2D transformation ==== */
					this.point2D.scale = tv.camera.focalLength / (tv.camera.focalLength + yz);
					this.point2D.x = yx * this.point2D.scale;
					this.point2D.y = xy * this.point2D.scale;
					this.point2D.w = Math.round(
					                   Math.max(
					                     0,
					                     this.point2D.scale * tv.camera.zoom.position * .8
					                   )
					                 );
					/* ==== image size ratio ==== */
					if (this.ratioImage > 1)
						this.point2D.h = Math.round(this.point2D.w / this.ratioImage);
					else
					{
						this.point2D.h = this.point2D.w;
						this.point2D.w = Math.round(this.point2D.h * this.ratioImage);
					}
				}
				/* ==== rendering ==== */
				o.draw = function ()
				{
					if (this.complete)
					{
						/* ==== paranoid image load ==== */
						if (!this.loaded)
						{
							if (!this.img)
							{
								/* ==== create internal image ==== */
								this.img = new Image();
								this.img.src = this.src;
							}
							if (this.img.complete)
							{
								/* ==== get width / height ratio ==== */
								this.style.visibility = 'visible';
								this.ratioImage = this.img.width / this.img.height;
								this.loaded = true;
								this.img = false;
							}
						}
						/* ==== HTML rendering ==== */
						this.style.left = Math.round(
						                    this.point2D.x * this.point2D.scale +
						                    tv.screen.w - this.point2D.w * .5
						                  ) + 'px';
						this.style.top  = Math.round(
						                    this.point2D.y * this.point2D.scale +
						                    tv.screen.h - this.point2D.h * .5
						                  ) + 'px';
						this.style.width  = this.point2D.w + 'px';
						this.style.height = this.point2D.h + 'px';
						this.style.borderWidth = Math.round(
						                           Math.max(
						                             this.point2D.w,
						                             this.point2D.h
						                           ) * tv.grid.borderSize * .01
						                         ) + 'px';
						this.style.zIndex = Math.floor(this.point2D.scale * 100);
					}
				}
			}
		}
		/* ==== start script ==== */
		tv.resize();
		mouse.y = tv.screen.y + tv.screen.h;
		mouse.x = tv.screen.x + tv.screen.w;
		tv.run();
	},

	/* ==== resize window ==== */
	resize : function ()
	{
		var o = tv.screen.obj;
		tv.screen.w = o.offsetWidth / 2;
		tv.screen.h = o.offsetHeight / 2;
		tv.camera.zoom.target = tv.screen.w / (tv.grid.size + .1);
		for (tv.screen.x = 0, tv.screen.y = 0; o != null; o = o.offsetParent)
		{
			tv.screen.x += o.offsetLeft;
			tv.screen.y += o.offsetTop;
		}
	},

	/* ==== main loop ==== */
	run : function ()
	{
		/* ==== motion ease ==== */
		tv.angle.x.move(-(mouse.y - tv.screen.h - tv.screen.y) * .0025, .1);
		tv.angle.y.move( (mouse.x - tv.screen.w - tv.screen.x) * .0025, .1);
		tv.camera.x.move(tv.camera.x.target, tv.grid.zoomed ? .25 : .025);
		tv.camera.y.move(tv.camera.y.target, tv.grid.zoomed ? .25 : .025);
		tv.camera.zoom.move(tv.camera.zoom.target, .05);
		/* ==== angles sin and cos ==== */
		tv.angle.cx = Math.cos(tv.angle.x.position);
		tv.angle.sx = Math.sin(tv.angle.x.position);
		tv.angle.cy = Math.cos(tv.angle.y.position);
		tv.angle.sy = Math.sin(tv.angle.y.position);
		/* ==== loop through all images ==== */
		for (var i = 0, o; o = tv.O[i]; i++)
		{
			o.calc();
			o.draw();
		}
		/* ==== loop ==== */
		setTimeout(tv.run, 32);
	}
}

/* ==== global mouse position ==== */
var mouse = {
	x : 0,
	y : 0
}
document.onmousemove = function(e)
{
	if (window.event) e = window.event;
	mouse.x = e.clientX;
	mouse.y = e.clientY;
	return false;
}

</script>


  </head>
  
 <body>
����λ�ã�<a href="http://www.alixixi.com/"></a> &gt; <a href="http://js.alixixi.com/"></a> &gt; <a href="http://js.alixixi.com/c/guanggao_1.shtml"></a>
<hr />
<div id="screen"></div>

<div id="bankImages">
	<img alt="" src="images/wi23.jpg">
	<img alt="" src="images/wt06.jpg">
	<img alt="" src="images/wt47.jpg">
	<img alt="" src="images/wt16.jpg">

	<img alt="" src="images/wt43.jpg">
	<img alt="" src="images/wt19.jpg">
	<img alt="" src="images/wt27.jpg">
	<img alt="" src="images/wt46.jpg">

	<img alt="" src="images/wt14.jpg">
	<img alt="" src="images/wt21.jpg">
	<img alt="" src="images/wt35.jpg">
	<img alt="" src="images/wt48.jpg">

	<img alt="" src="images/wt55.jpg">
	<img alt="" src="images/wt40.jpg">
	<img alt="" src="images/wt53.jpg">
	<img alt="" src="images/wt25.jpg">

</div>

<script type="text/javascript">
	/* ==== start script ==== */
	onresize = tv.resize;
	tv.init();
</script>
<br>
<div align="center">
  <p style="color:#FFFFFF"></p>
  <p></p>
  <p style="color:#FFFFFF"></p>
  <p></p>
</div>

</body>
</html>