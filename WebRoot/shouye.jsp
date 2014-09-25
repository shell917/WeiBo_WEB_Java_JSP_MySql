<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>腾讯微博首页</title>
		<script type="text/javascript">
			function fabiao()
			{
				alert("发表成功！");
			}
		</script>
</head>
<body style="background-image:url('images\weiboshouye.jpg');background-attachment:fixed">

<center>
<table border="0"  cellspacing="0" width="80%">
<tr>
<td>
<table width="100%" border="0"><tr><td><img src="images\1234.png" width="100%" height="300px" ></td></tr></table>



<style type="text/css">
a:hover{font-size:30px}
a:link{text-decoration:none}
.bb{heigth:60px;line-height:50px; font-weight:bold; font-size:25px; color:#fff; padding-left:10px; text-align:center}
</style>

<form action="${pageContext.request.contextPath}/QueryServlet">
<div class="bb">
<span><img src="images\logo.jpg"></span>

<span style="color:black">首页</span>|
<a href="weipindao.jsp" title="腾讯微频道"><span>微频道</span></a>|
<a href="地址" title="腾讯微博-找人"><span>找人</span></a>|
<a href="地址" title="腾讯微博-微群"><span>微群</span></a>|
<a href="地址" title="腾讯微博-应用"><span>应用</span></a>|
<a href="weixiangce.jsp" title="腾讯微博-相册"><span>微相册</span></a>
<input type="text" value="请输入用户昵称" id="select" name="select">
<input type="submit" value="搜索">
</div>
</form>

<table width="100%" border="0">
<tr>
<td width="65%" height="800px" style="background-color=beige"> 
<center><form action="${pageContext.request.contextPath}/FabiaoServlet"><table>
<br/>

<tr><td><span style="color:gray;font-size:18px">&nbsp;来，说说你在做什么，想什么</span></td></tr>
<tr><td><textarea cols="87" rows="8" id="text" name="text">#伦敦奥运#</textarea></td></tr>
<tr align="right" ><td ><input type="submit" value="&nbsp;广&nbsp;播&nbsp;" style="background-color:yellowgreen ;font-size:15px" onclick="fabiao()"></td></tr>


<tr><td>
<table>
<tr bgcolor="lightpink"><td>微观奥运</td><td colspan="2"><marquee scrolldelay="35">00：40王明娟得第二金微博感谢国家 
  03:20叶诗文破纪录得第4金  02:59孙杨破奥运纪录得男泳首金   03：53中国获女子4×100自接力第四</marquee></td></tr>

<tr><td rowspan="3"><img src="images/15.jpg"></td><td> 孙样破奥运纪录得中国男泳首金</td><td><img src="images/16.jpg">4<img src="images/17.jpg">2<img src="images/18.jpg">1</td></tr>
<tr><td>叶诗文破世界纪录得冠</td><td>早报-中国首日揽4金 孙杨闪耀</td></tr>
<tr><td>易思玲：【最想爸妈】</td><td>话题-孙杨用金牌回击朴狂人</td></tr>
<tr><td colspan="3"><img src="images/19.jpg" width="230px"><img src="images/20.jpg" width="230px"><img src="images/21.jpg" width="230px"></td></tr>
</table>
</td></tr>



<tr><td><a href="${pageContext.request.contextPath }/UpdateServlet?content=""><font face="华文新魏" size="5">
更新广播：</font></a></td></tr>


<tr><td>

	<c:if test="${show == null}">	
		        <center>
				<span style="color: green;font-size: 12pt">没有最新动态</span>
			    </center>		
	</c:if>
	<c:if test="${show != null}">
	<c:forEach items="${show}" var="blog">
		
	  <table>
           <tr><td width="8%"> <img src="images/46010.jpg" width="80px" weigth="120px"/></td>
               <td valign="top"><p><font size="3"> 星幻</font>&nbsp;：<font size="4">${blog.broadcastContent}</font></p></td>
           </tr>
           <tr><td></td><td style="color:gray;align:right">广播时间：  ${blog.publishTime }</td></tr>
      </table> 
		
		
	</c:forEach>
	</c:if>

</td></tr>
 


<tr><td><table><br/>
<tr><td width="8%">
<img src="images\4601.jpg" width="80px" weigth="100px">
</td><td>
<p>苏芩&nbsp转播: 气质女人有很多种类型：或腹有诗书，或历尽沧桑，或天真纯然。
总之一句话，想做个有气质的女人，别活得太俗气。天长地久有时尽，此恨绵绵无绝期。
两情若是久长时，又岂在朝朝暮暮!</p>
</td></tr></table></td></tr>
<tr><td><table><tr><td width="8%">
<img src="images\4602.jpg" width="80px" weigth="100px">
</td><td>
<p>传奇历史故事&nbsp转播: 我想知道,你有没有心疼过我的执着,至少我可以知道,我有没有白白爱过,在乎过,哇靠，大爱，
这个微博真的说到心坎去了。强烈推荐收听（@最痛到窒息的个性说说）句句痛彻心扉，真的痛到窒息！
【最美古诗词】1.用我三生烟火，换你一世迷离。2.山有木兮木有枝，心悦君兮君不知。
3.落红不是无情物，化作春泥更护花。4.只愿君心似我心，定不负相思意。</p>
</td></tr></table></td></tr>
<tr><td><table><tr><td width="8%">
<img src="images\4603.jpg" width="80px" weigth="100px">
</td><td>
<p>ELLE中文网&nbsp转播:在整理化妆台的时候总会看到一些用掉或还有残余的空瓶，ELLE博客达人糖糖的棉花并不是一个爱收集空瓶的姑娘，
但在整理的时候总爱搬出来晒一下，或扔掉或继续使用，推荐给你的，都是值得拥有的！！</p>
</td></tr></table></td></tr>
<tr><td><table><tr><td width="8%">
<img src="images\4605.jpg" width="80px" weigth="100px">
</td><td>
<p>ACG动漫&nbsp转播:#火影忍者#Falling in love three times is perfect in life-Once ignorant,once impressive，once for lifetime.
 一生只谈三次恋爱最好：一次懵懂，一次刻骨，一次一生。</p>
</td></tr></table></td></tr>
<tr><td><table><tr><td width="8%">
<img src="images\4604.jpg" width="80px" weigth="100px">
</td><td>
<p>关注健康&nbsp转播:【睡眠不足易得癌】当你睡觉时，不少免疫力因子会在此时产生，它们犹如一个屏障保护着你。
睡饱了免疫力增强了，我们癌细胞想要“进攻”人体的难度就大多了。午睡是中国人很好的习惯，
中午1点是人类的一个睡眠高峰，这时打个小盹，也能增强体内免疫细胞的活跃性，起到一定的防癌作用。
【白领一族怎样吃快餐？】1、主食多样化—特别要增加粗粮摄入。
2、最佳的荤素搭配是1∶2，荤菜中多选择鱼类。3、菜品经常变换。4、多喝汤，少喝饮料。</p>
</td></tr></table></td></tr>
<tr><td><table><tr><td width="8%">
<img src="images\4607.jpg" width="80px" weigth="100px">
</td><td>
<p>腾讯科技:【雅虎的印尼资产：收购签到服务Koprol两年后物归原主】雅虎已同意将Koprol的名称、域名及所有相关知识产权和商标的所有权归还给Koprol创始人。
尽管Koprol将被雅虎放弃，但Koprol仍然是到目前为止印度尼西亚最大的初创公司成功事例，Koprol在2010年被雅虎收购。</p>
</td></tr></table></td></tr>
<tr><td><table><tr><td width="8%">
<img src="images\1234567.PNG" width="80px" weigth="500px" align=top>
</td><td>
<p>传奇历史故事:林彪对他在庐山带头搞起来的那场风波，没有作过任何检讨。
1971的焰火晚会上，林彪不辞而别表达对毛泽东的不满。</p>
<img src="images\4608.jpg" width="150px" weigth="120px">
</td></tr></table></td></tr>
<tr><td><table><tr><td width="8%">
<img src="images\100.jpg" width="80px" weigth="100px">
</td><td>
<p>幸福心理学:美好不过是一场幻觉，犹如炫美的烟花，在最漆黑的深夜绽放，转瞬稍纵即逝，化为灰烬。他寂寞地站在风中，倾听遥远的诉说，
飘渺的思念被风撕裂，摔得粉碎，撞击在地面，生出锥想起那些简单而又快乐的画面，昔日的人.事，如今被遗忘在那个角落。</p>
</td></tr></table></td></tr>
</table></form></center></td>


<td style="background-color=Tan" valign="top"><center><table width="100%" border="0">
<tr><td><table><tr><td width="8%">
<img src="images\324.jpg" width="180px" weigth="200px" >
</td><td>
<p>星幻：<br>今天心情怎么样？<br>有好多人在关注你！<br>快将你的心情广播给好友！！</p>
</td></tr></table></td></tr>

<tr><td><table><tr>
<td width="25%" height="60px"><a href="地址">42<br>我的广播</a></td>
<td width="25%"><a href="地址">38<br>收藏</a></td>
<td width="25%"><a href="地址">100<br>收听</a></td>
<td width="25%"><a href="地址">200<br>听众</a></td>
</tr></table></td></tr>

<tr><td width="100%" heigth="60px" align="center">
<a href="地址">每日任务:&nbsp爱上微博任务，不离不弃！</a>
</td><tr>

<tr>
<td><br/><span style="color:purple;font-size:20px">视频区：</span><br/><br/>
<marquee behavior="alternate" Srcollamount="1" >
<a href="shipin1.jsp"><img src="images\122.jpg" width="180px" height="150px" alt="7!!《ラヴァーズ》火影最新OP.mp4"></a>
<a href="shipin2.jsp"><img src="images\234.PNG" width="180px" height="150px" alt="Calvin Harris《Feel So Close》.mp4"></a>
<a href="shipin3.jsp"><img src="images\345.PNG" width="180px" height="150px" alt="SuperJunior《Mr. Simple》.mp4"></a>
</marquee></td></tr><br/>

<tr><td ><br/><span style="color:purple;font-size:20px">推荐收听：</span><br/></td></tr>
<tr><td><table>
<tr><td width="15%">
<img src="images\325.jpg" width="80px" weigth="100px">
</td><td>
<p>Hebe<br>偶像组合SHE成员<br>收听&nbsp收听释小龙Ashton的人也收听她</p>
</td></tr></table></td></tr>
<tr><td><table><tr><td width="15%">
<img src="images\326.jpg" width="80px" weigth="100px">
</td><td>
<p>中国奥委会官网奥委会官网<br>收听</p>
</td></tr></table></td><tr>
<tr><td><table><tr><td width="15%">
<img src="images\4609.jpg" width="80px" weigth="100px">
</td><td>
<p>彤<br>收听<br> QQ好友-孙微彤</p>
</td></tr></table></td></tr>

<tr><td>
<div style="color:red">
<div><span style="color:purple;font-size:20px">可能认识的人:</span></div>
  <marquee behavior="alternate" Srcollamount="1" ><img src="images/1.jpg" width="80px" height="80px">张姚
     <img src="images/2.jpg" width="80px" height="80px">笑笑<img src="images/3.jpg" width="80px" height="80px">
HELLEN<img src="images/4.jpg" width="80px" height="80px">张勇<img src="images/5.jpg" width="80px" height="80px">
于强<img src="images/6.jpg" width="80px" height="80px">赵薇<img src="images/7.jpg" width="80px" height="80px">
小发<img src="images/8.jpg" width="80px" height="80px">迪迪<img src="images/10.jpg" width="80px" height="80px">
郭俊<img src="images/9.jpg" width="80px" height="80px">赵嘉<img src="images/12.jpg" width="80px" height="80px">
赵芳<img src="images/11.jpg" width="80px" height="80px">林玲
  </marquee>
</div>
</td></tr>


<tr><table>
<tr><td><br/><span style="color:purple;font-size:20px">热门话题：</span></td></tr>
<tr><td>北京内涝地图(6461094)：<br>北京气象局信息：今天傍晚阴有阵雨，下班路上请注意交通安全</td></tr>
<tr><td>深圳普降暴雨(6421419):<br>@深圳天气：你那里看海了么？</td></tr>
<tr><td>房山洪灾伤亡重大(775862)</td></tr>
<tr><td>日欲国有化钓鱼岛(135286808)</td></tr>
<tr><td>曝光开幕式该不该(2785047):<br>来奥运微频道一起看开幕式!</td></tr>
<tr><td>男人只属于女人吗(2747703)</td></tr>
<tr><td>联通限宽带接入量(6959813)</td></tr>
<tr><td>先救母还是先救妻(504000)</td></tr>
<tr><td>山西民声热线(33186)</td></tr>
<tr><td><a href="地址">更多话题>></a></td></tr>
</table></tr>

</table></center></td>

</tr>
</table>


<div style="margin:45px auto 0px auto;width:960px;height:150px;text-align:center">	
   <a href="http://www.qq.com/"><span>腾讯网</span></a>|
   <a href="http://www.qq.com/map/"><span>网站导航</span></a>|
   <a href="http://t.qq.com/certification"><span>认证服务</span></a> |
   <a href="http://dev.t.qq.com/"><span>开放平台</span></a>|
   <a href="http://k.t.qq.com/k/%25E6%2584%258F%25E8%25A7%2581%25E5%258F%258D%25E9%25A6%2588"><span>意见反馈</span></a> |
   <a href="http://sitemap.163.com/"><span>
                              <select>
                              <option selected><a href="">简体中文</a></option>
                              <option><a href="">繁体中文</a></option>
                              <option><a href="">English</a></option>
                              </select>
                                     </span></a>
   <div>
      <span>Copyright&copy 1998-2012 Tencent.All Right Reserved</span>
   </div>
</div>

</td>
</tr>
</table>
</center>

</body>
</html>