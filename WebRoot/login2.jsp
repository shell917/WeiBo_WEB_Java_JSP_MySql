<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<script type="text/javascript">
function ff()
{
  window.location.href="denglu.jsp";
}
function log1()
{window.location.href="login1.jsp";}
function log2()
{window.location.href="login2.jsp";}

function con()
{
  var tel=document.getElementById("m").value;
	if(tel.match("^(13[0-9]|15[0-9]|18[0-9])\d{8}")&&tel!=""){
		document.getElementById("ms").innerHTML="";
	}
	else{
		document.getElementById("ms").innerHTML="请输入正确的手机号";
	}
}
function con1()
{
  var m1=document.getElementById("p").value;
 if(m1.length<6){
   document.getElementById("sp").innerHTML="密码太短了，请重新输入";
 }
  else{
   document.getElementById("sp").innerHTML="";
}
}
function con2()
{
  var m1=document.getElementById("n").value;
 if(m1==""){
   document.getElementById("sn").innerHTML="请输入昵称";
 }
  else{
   document.getElementById("sn").innerHTML="";
}
}

function con3()
{
  var m1=document.getElementById("yn").value;
 if(m1==""){
   document.getElementById("syn").innerHTML="请输入姓名";
 }
  else{
   document.getElementById("syn").innerHTML="";
}
}

function con4()
{
  var m1=document.getElementById("id").value;
 if(m1==""){
   document.getElementById("si").innerHTML="请输入证件号码";
 }
  else{
   document.getElementById("si").innerHTML="";
}
}

function con5()
{
  var m1=document.getElementById("w").value;
 if(m1==""){
   document.getElementById("sw").innerHTML="请输入验证码";
 }
  else{
   document.getElementById("sw").innerHTML="";
}
}
 
function lg()
{
  var s1=document.getElementById("m").value;
  var s2=document.getElementById("p").value;
  var s3=document.getElementById("n").value;
  var s4=document.getElementById("yn").value;
  var s5=document.getElementById("id").value;
  var s6=document.getElementById("w").value;
 if(s1==""||s2.length<6||s3==""||s4==""||s5=="")
  {alert("请完善信息!");}
  else{
    if(s6=="D55K4") {window.location.href="腾讯微博首页.htm";}
    else {alert("验证码不正确");}
  }
}

</script>
</head>
<body style="background-image:url('images1\bg.jpg')">
<center>
<table border="0" width="80%">

  <tr><td colspan="2" width="100%" align="center">
   <img width="100%" height="150" src="images1\TXLG.PNG">
   <div><input type="button" value="电子邮箱注册" onclick="log1();"/>
     <input type="button" value="手机号码注册" onclick="log2();"/></div>
  </td>
  </tr>

<form action="${pageContext.request.contextPath}/login2Servlet">
<tr><td width="80%">
    <table border="0" width="100%">
    <tr><td width="60%"><lable>我的手机号</lable><input width="80%" id="m" name="m" type="text" onblur="con();"/></td>
         <td><span id="ms" style="color:red">免费获取短信激活码</span></td>
     </tr>

    <tr><td width="60%"><lable>创建密码</lable><input      
width="80%" id="p"  name="p" type="password" 
onblur="con1();"/></td>
         <td><span id="sp" style="color:red"></span></td>
     </tr>

    <tr><td width="60%"><lable>昵称</lable><input      
width="80%" id="n" type="text"  name="n"
onblur="con2();"/></td>
         <td><span id="sn" style="color:red"></span></td>
     </tr>

   <tr><td colspan="2" width="100%"><lable>性别</lable><input type="text" id="sex" name="sex"/></td></tr>


     <tr><td><lable>所在地</lable>
      <input type="text" id="address" name="address">
       </td>
    <td>
      <input type="text" id="address_" name="address_">
      </td>
</tr>
    
    <tr><td width="60%"><lable>身份证号</lable><input width="80%" id="id" name="id" type="text" 
onblur="con4();"/></td>
         <td><span id="si" style="color:red"></span></td>
     </tr>
   
   <tr><td width="60%"><lable>短信激活码</lable><input  width="80%" id="w" type="text" 
onblur="con5();"/>D55K4</td>
         <td><span id="sw" style="color:red"></span></td>
     </tr>
    
     <tr><td colspan="2"><input type="submit" value="立即开通"/></td></tr>
 </from>
    </table>
 </td>
 <td>
          <table border="0"><tr><td>已有新浪账号？     </td></tr><tr><td><input type="button" value="登录"      onclick="ff();"/></td></tr>
     <tr><td>新浪微博</td></tr>
     <tr><td>最具人气的微博产品，平均每人</td></tr>
    <tr><td>找到98位朋友</td></tr>
    <tr><td>拥有287位粉丝</td></tr>
    <tr><td>找到25条感兴趣的话题</td></tr>
    </table>
 </td>
</tr>
<tr>
<td colspan="2"><img src="images1\btbg.png"></td>
</tr>
<tr>
<td colspan="2"><img src="images1\32.jpg"></td>
</tr>
</table>
</center>
</body>
</html>