<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'weipindao.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>微频道首页</title>
<script type="text/javascript">
<!--
var timeout = 500;
var closetimer= 0;
var ddmenuitem = 0;
// open hidden layer
function mopen(id)
{	
	// cancel close timer
	mcancelclosetime();

	// close old layer
	if(ddmenuitem) ddmenuitem.style.visibility = 'hidden';

	// get new layer and show it
	ddmenuitem = document.getElementById(id);
	ddmenuitem.style.visibility = 'visible';

}
// close showed layer
function mclose()
{
	if(ddmenuitem) ddmenuitem.style.visibility = 'hidden';
}

// go close timer
function mclosetime()
{
	closetimer = window.setTimeout(mclose, timeout);
}

// cancel close timer
function mcancelclosetime()
{
	if(closetimer)
	{
		window.clearTimeout(closetimer);
		closetimer = null;
	}
}

// close layer when click-out
document.onclick = mclose; 
// -->
</script>

  </head>
  
  <body bgcolor=9AD4D6>

<div style="Z-INDEX: 4; POSITION: absolute; WIDTH: 1350px; HEIGHT: 37px; VISIBILITY: visible; TOP: 0px; LEFT: 0px" id="layer1">
	<div style="position: absolute; width: 1222px; height: 41px; z-index: 1; left: 93px; top: 1872px" id="layer35">
		<p align="center">腾讯网|网站导航|认证服务|开放平台|腾讯客服|意见反馈|English◆<br>
		Copyright &copy; 1998 - 2012 Tencent. All Rights Reserved</div>
	<table border="0" cellSpacing="0" cellPadding="0" width="100%" bgColor="#4e4e4d" height="37">
		<tr height="37" width="100%">
			<td width="139">　</td>
			<td width="180">
			<img border="0" src="images/london2012_logo_1.png" width="178" height="35"></td>
			<td width="45"><font color="#ffffff" face="微软雅黑">首页</font></td>
			<td width="64"><font color="#ffffff" face="微软雅黑">微频道</font></td>
			<td width="48"><font color="#ffffff" face="微软雅黑">找人</font></td>
			<td width="44"><font color="#ffffff" face="微软雅黑"><a href="#" onmouseover="mopen('m1')" onmouseout="mclosetime()">
			<font color="#FFFFFF"><span style="text-decoration: none">微群</span></font></a></font></td>
			<td width="42"><font color="#ffffff" face="微软雅黑"><a href="#" onmouseover="mopen('m2')" onmouseout="mclosetime()">
			<font color="#FFFFFF"><span style="text-decoration: none">应用</span></font></font></td>
			<td width="174"><font color="#ffffff" face="微软雅黑">实验室</font></td>
			<td width="146"><font color="#ffffff">
			<img border="0" src="images/2012-07-28_100438.png" width="145" height="38"></font></td>
			<td width="64"><font color="#ffffff" face="微软雅黑"><a href="#" onmouseover="mopen('m9')" onmouseout="mclosetime()">
			<font color="#FFFFFF"><span style="text-decoration: none">Sram</span></font></a></td>
			<td><input type=text value="搜名字/帐号/广播" size="20" style="height:20px;"t><div style="position: absolute; width: 24px; height: 20px; z-index: 2; left: 1094px; top: 9px" id="layer39">
				<img border="0" src="images/2012-07-29_3.png" width="20" height="20"></div>
			</td>
			<td width="79"><font color="#ffffff" face="微软雅黑">体验版</font></td>
		</tr>
	</table>
</div>

<div style="position: absolute; width: 1224px; height: 56px; z-index: 6; left: 90px; top: 56px" id="layer2">
<div style="position: absolute; width: 244px; height: 625px; z-index: 5; left: 955px; top: 123px" id="layer27">
	<img border="0" src="images/7.png" width="250" height="616"></div>
<table border="0" cellpadding="0" cellspacing="0" width="100%" height="100%" background="images/1.png">
	<tr>
		<td>　</td>
	</tr>
</table>
</div>

<div style="position: absolute; width: 257px; height: 481px; z-index: 7; left: 260px; top: 188px" id="layer21">
		<div id="m9" onmouseover="mcancelclosetime()" onmouseout="mclosetime()" style="position: absolute; width: 100px; height: 100px; z-index: 9; left: 621px; top: -151px; visibility: hidden" id="layer41">
			<img border="0" src="images/2012-07-29_12.png" width="111" height="116"></div>
		<div id="m8" onmouseover="mcancelclosetime()" onmouseout="mclosetime()" style="position: absolute; width: 100px; height: 100px; z-index: 15; left: -3px; top: 649px; visibility: hidden" id="layer41">
			<img border="0" src="images/2012-07-29_11.png" width="312" height="107"></div>
		<div id="m7" onmouseover="mcancelclosetime()" onmouseout="mclosetime()" style="position: absolute; width: 209px; height: 80px; z-index: 14; left: -3px; top: 523px; visibility: hidden" id="layer40">
			<img border="0" src="images/2012-07-29_10.png" width="312" height="78"></div>
		<div id="m6" onmouseover="mcancelclosetime()" onmouseout="mclosetime()" style="position: absolute; width: 100px; height: 100px; z-index: 13; left: -3px; top: 398px; visibility:hidden" id="layer40">
			<img border="0" src="images/2012-07-29_9.png" width="602" height="143"></div>
		<div id="m5" onmouseover="mcancelclosetime()" onmouseout="mclosetime()" style="position: absolute; width: 100px; height: 100px; z-index: 12; left: -3px; top: 278px; visibility:hidden" id="layer40">
			<img border="0" src="images/2012-07-29_8.png" width="602" height="296"></div>
		<div id="m4" onmouseover="mcancelclosetime()" onmouseout="mclosetime()" style="position: absolute; width: 100px; height: 100px; z-index: 11; left: -5px; top: 163px; visibility:hidden" id="layer40">
			<img border="0" src="images/2012-07-29_7.png" width="602" height="253"></div>
		<div id="m3" onmouseover="mcancelclosetime()" onmouseout="mclosetime()" style="position: absolute; width: 254px; height: 100px; z-index: 8; left: -5px; top: 11px; visibility:hidden" id="layer40">
			<img border="0" src="images/2012-07-29_6.png" width="602" height="253"></div>
		<div id="m2" onmouseover="mcancelclosetime()" onmouseout="mclosetime()" style="background-color:4E4E4D; position: absolute; width: 310px; height: 147px; z-index: 10; left: 301px; top: -146px; visibility:hidden" id="layer39">
			<img border="0" src="images/2012-07-29_2.png" width="311" height="177"></div>
<div id="m1" onmouseover="mcancelclosetime()" onmouseout="mclosetime()" style="background-color:4E4E4D; position: absolute; width: 307px; height: 122px; z-index: 7; left: 214px; top: -149px; visibility:hidden" id="layer32">
<p><img border="0" src="images/2012-07-29_4.png" width="310" height="133"></div>
	<div style="position: absolute; width: 253px; height: 552px; z-index: 5; left: 270px; top: -4px" id="layer22">
		<div style="position: absolute; width: 100px; height: 100px; z-index: 5; left: 258px; top: 0px" id="layer23">
			<img border="0" src="images/6.png" width="250" height="315"></div>
		<p><img border="0" src="images/5.png" width="250" height="551"></div>
	<p align="center">
	<img border="0" src="images/4.png" width="250" height="487"></div>

<div style="position: absolute; width: 1223px; height: 1794px; z-index: 5; left: 93px; top: 125px" id="layer5">
	<div style="position: absolute; width: 1222px; height: 40px; z-index: 1; left: 0px; top: 0px" id="layer6">
		<div style="position: absolute; width: 162px; height: 39px; z-index: 1; left: 0px; top: 0px" id="layer8">
			<div style="position: absolute; width: 1059px; height: 39px; z-index: 1; left: 163px; top: 1px" id="layer9">
				<div style="position: absolute; width: 54px; height: 23px; z-index: 2; left: 18px; top: 8px" id="layer37">
					<p align="center"><font color="006A92">广场</font></div>
				<div style="position: absolute; width: 93px; height: 22px; z-index: 3; left: 75px; top: 8px" id="layer38">
					<img border="0" src="images/2.png" width="93" height="21"></div>
　<div style="position: absolute; width: 246px; height: 37px; z-index: 1; left: 794px; top: 9px" id="layer10">
					伦敦奥运精彩呈现&nbsp; 图文展示</div>
			</div>
			<p align="center"></div>
		<div style="position: absolute; width: 100px; height: 22px; z-index: 2; left: 26px; top: 11px" id="layer36">
			<p align="center">全部频道</div>
		<p>　</div>
	<div style="background-color:C5EBF7; position: absolute; width: 161px; height: 884px; z-index: 2; left: 1px; top: 40px" id="layer11">
		<div style="position: absolute; width: 160px; height: 34px; z-index: 1; left: 0px; top: 0px" id="layer12">
			<img border="0" src="images/3.png" width="161" height="35"></div>
		<div style="position: absolute; width: 160px; height: 135px; z-index: 2; left: 0px; top: 37px" id="layer13">
			<a href="#" onmouseover="mopen('m3')" onmouseout="mclosetime()"><p align="left">
			<span style="text-decoration: none"><font color="#000000">&nbsp;</font></span><b><span style="text-decoration: none"><font color="#000000">奥运会&nbsp;&nbsp;&nbsp;&nbsp; 
			</font></span> 
			<img border="0" src="images/2012-07-29_5.png" width="16" height="15"></b></p></a>
			<div style="position: absolute; width: 159px; height: 101px; z-index: 1; left: -1px; top: 36px" id="layer14">
				<p align="justify">&nbsp;首金易思玲 游泳</p>
				<p align="justify">&nbsp;奥运热点 每日精华</p>
				<p align="justify">&nbsp;现场直击 名人奥运</div>
			<p>　</div>
		<div style="position: absolute; width: 162px; height: 113px; z-index: 2; left: -1px; top: 188px" id="layer15">
			<a href="#" onmouseover="mopen('m4')" onmouseout="mclosetime()">
			<font color="#000000"><span style="text-decoration: none">&nbsp;</span></font><b><span style="text-decoration: none"><font color="#000000">资讯·体育&nbsp;&nbsp;</font> </span> 
			<img border="0" src="images/2012-07-29_5.png" width="16" height="15"></b></a><p>&nbsp;事实 杂谈 军事</p>
			<p>&nbsp;财经 科技 豪车</div>
		<div style="position: absolute; width: 160px; height: 118px; z-index: 2; left: 0px; top: 302px" id="layer16">
			<a href="#" onmouseover="mopen('m5')" onmouseout="mclosetime()">
			<span style="text-decoration: none"><font color="#000000">&nbsp;</font></span><b><font color="#000000"><span style="text-decoration: none">娱乐·影音&nbsp;&nbsp; 
			</span></font> 
			<img border="0" src="images/2012-07-29_5.png" width="16" height="15"></b></a><p>&nbsp;明星 帅哥 动漫</p>
			<p>&nbsp;美女 星座 搞笑</p>
			<div style="position: absolute; width: 160px; height: 119px; z-index: 1; left: 0px; top: 120px" id="layer17">
				<a href="#" onmouseover="mopen('m6')" onmouseout="mclosetime()">
				<font color="#000000"><span style="text-decoration: none">&nbsp;</span></font><b><span style="text-decoration: none"><font color="#000000">生活·时尚&nbsp;&nbsp; 
				</font></span> 
				<img border="0" src="images/2012-07-29_5.png" width="16" height="15"></b></a><p>&nbsp;服饰 美容 家居</p>
				<p>&nbsp;美食 创意 旅行</div>
		</div>
		<div style="position: absolute; width: 160px; height: 124px; z-index: 2; left: 0px; top: 545px" id="layer18">
			&nbsp;<a href="#" onmouseover="mopen('m7')" onmouseout="mclosetime()"><b><font color="#000000"><span style="text-decoration: none">文化·教育&nbsp;&nbsp; 
			</span></font> 
			<img border="0" src="images/2012-07-29_5.png" width="16" height="15"></b></a><p>&nbsp;摄影 英语 读书</p>
			<p>&nbsp;历史 育儿 蔡奇</div>
		<div style="position: absolute; width: 160px; height: 111px; z-index: 2; left: 2px; top: 679px" id="layer19">
			&nbsp;<a href="#" onmouseover="mopen('m8')" onmouseout="mclosetime()"><b><font color="#000000"><span style="text-decoration: none">新鲜·热点&nbsp;&nbsp; 
			</span></font> 
			<img border="0" src="images/2012-07-29_5.png" width="16" height="15"> </b></a><p>&nbsp;热门广播 公益季</p>
			<p>&nbsp;中国好声音 北京暴雨</p>
			<p>&nbsp;聆听寂寞的蒲公英</div>
	</div>
	<div style="background-color:E9E9E9; position: absolute; width: 1059px; height: 1609px; z-index: 5; left: 163px; top: 41px" id="layer20">
<div style="position: absolute; width: 100px; height: 100px; z-index: 5; left: 11px; top: 518px" id="layer24">
	<div style="position: absolute; width: 100px; height: 100px; z-index: 1; left: 779px; top: 424px" id="layer34">
		<img border="0" src="images/16.png" width="250" height="459"></div>
	<div style="position: absolute; width: 100px; height: 100px; z-index: 1; left: 519px; top: 568px" id="layer33">
		<img border="0" src="images/15.png" width="250" height="444"></div>
	<p><img border="0" src="images/8.png" width="250" height="274"></div>
<div style="position: absolute; width: 100px; height: 100px; z-index: 5; left: 276px; top: 576px" id="layer25">
	<img border="0" src="images/9.png" width="250" height="470"></div>
<div style="position: absolute; width: 100px; height: 100px; z-index: 5; left: 532px; top: 345px" id="layer26">
	<img border="0" src="images/10.png" width="250" height="410"></div>
<div style="position: absolute; width: 100px; height: 100px; z-index: 5; left: 11px; top: 800px" id="layer28">
	<img border="0" src="images/11.png" width="250" height="528"></div>
<div style="position: absolute; width: 100px; height: 100px; z-index: 5; left: 790px; top: 649px" id="layer31">
	<img border="0" src="images/14.png" width="250" height="281"></div>
<div style="position: absolute; width: 100px; height: 100px; z-index: 5; left: 532px; top: 763px" id="layer30">
	<img border="0" src="images/13.png" width="250" height="316"></div>
<div style="position: absolute; width: 100px; height: 100px; z-index: 5; left: 275px; top: 1051px" id="layer29">
	<img border="0" src="images/12.png" width="250" height="462"></div>
　</div>
	<p>　</div>

</body>

</html>