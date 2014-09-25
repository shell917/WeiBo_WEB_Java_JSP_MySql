<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>查询好友</title>
		<script type="text/javascript">
		</script>
		<style type="text/css">
		</style>
	</head>
	<body style="background-image: url('images/weiboshouye.jpg'); background-attachment: fixed">
	
			<center>
			<table border="0" cellspacing="0" width="80%">
					<tr>
						<td>
							<table width="100%" border="0">
								<tr>
									<td>
										<img src="images\1234.png" width="100%" height="300px">
									</td>
								</tr>
							</table>
							</td></tr>
							<tr><td>
							<table>
							<tr>
							 <td>
							 <div class="bb">
								<span><img src="images\logo.jpg">
								</span>
								<span style="color: black">首页</span>|
								<a href="weipindao.jsp" title="腾讯微频道"><span>微频道</span>
								</a>|
								<a href="地址" title="腾讯微博-找人"><span>找人</span>
								</a>|
								<a href="地址" title="腾讯微博-微群"><span>微群</span>
								</a>|
								<a href="地址" title="腾讯微博-应用"><span>应用</span>
								</a>|
								<a href="weixiangce.jsp" title="腾讯微博-相册"><span>微相册</span>
								</a>
							</div>
							</td></tr>
							</table>
							</td></tr>
							
							
							<tr>
							<td>
							   <table width="100%" border="0" height="576">
								  <tr><td><font face="华文新魏" size="6" valign="top">查询结果：</font></td></tr>
								  <c:if test="${user == null}">
								  没有该用户
								  </c:if>
								  <c:if test="${user != null}">
								  <c:forEach items="${user}" var="blog">
								  <tr><td width="65%" valign="top">
									<table border="10" cellpadding="10" cellspacing="10" width="700" height="400" bgcolor="708620" bordercolor="FFE080">
										<tr>
											<td colspan="2">　<input type="image" src="images/b.jpg" width="25%" height="74"></td>
										</tr>
										<tr>
											<td align="right">
											<font face="微软雅黑">邮箱：</font></td>
											<td width="400"><font size="5">${blog.email}</font></td>
										</tr>
										<tr>
											<td align="right">
											<font face="微软雅黑">昵称：</font></td>
											<td width="400"><font size="5">${blog.honeyname}</font></td>
										</tr>
										<tr>
								  			<td align="right">
											<font face="微软雅黑">性别：</font></td>
									
							   				<td width="400"><font size="5">${blog.sex}</font></td>
										</tr>
										<tr>
								  
								  			<td align="right">
											<font face="微软雅黑">省份：</font></td>
									
							   				<td width="400"><font size="5">${blog.country}</font></td>
										</tr>
										<tr>
								  
								  			<td align="right">
											<font face="微软雅黑">城市：</font></td>
								
							   				<td width="400"><font size="5">${blog.city}</font></td>
										</tr>
										<tr>
								  
								  			<td align="right">
											<font face="微软雅黑">学校：</font></td>
							   				<td width="400"><font size="5">${blog.school}</font></td>
										</tr>
										<tr>
											<td align="right">
											<font face="微软雅黑">名字：</font></td>
											<td width="400"><font size="5">${blog.name}</font></td>
										</tr>
									</table>
									</td></tr>
									</c:forEach>
									</c:if>
									
							   
							   </table>
							<tr>
							    <td>
											<table>
														<tr bgcolor="lightpink">
																<td>
																	微观奥运
																</td>
																<td colspan="2">
																	<marquee scrolldelay="35">
																		00：40王明娟得第二金微博感谢国家 03:20叶诗文破纪录得第4金 02:59孙杨破奥运纪录得男泳首金
																		03：53中国获女子4×100自接力第四
																	</marquee>
																</td>
															</tr>

															<tr>
																<td rowspan="3">
																	<img src="images/15.jpg">
																</td>
																<td>
																	孙样破奥运纪录得中国男泳首金
																</td>
																<td>
																	<img src="images/16.jpg">
																	4
																	<img src="images/17.jpg">
																	2
																	<img src="images/18.jpg">
																	1
																</td>
															</tr>
															<tr>
																<td>
																	叶诗文破世界纪录得冠
																</td>
																<td>
																	早报-中国首日揽4金 孙杨闪耀
																</td>
															</tr>
															<tr>
																<td>
																	易思玲：【最想爸妈】
																</td>
																<td>
																	话题-孙杨用金牌回击朴狂人
																</td>
															</tr>
															<tr>
																<td colspan="3">
																	<img src="images/19.jpg" width="230px">
																	<img src="images/20.jpg" width="230px">
																	<img src="images/21.jpg" width="230px">
																</td>
															</tr>
														</table>
													</td>
												</tr>
							
							
							<tr>
							  <td colspan="3">
							<div
								style="margin: 45px auto 0px auto; width: 960px; height: 150px; text-align: center">
								<a href="http://www.qq.com/"><span>腾讯网</span>
								</a>|
								<a href="http://www.qq.com/map/"><span>网站导航</span>
								</a>|
								<a href="http://t.qq.com/certification"><span>认证服务</span>
								</a> |
								<a href="http://dev.t.qq.com/"><span>开放平台</span>
								</a>|
								<a
									href="http://k.t.qq.com/k/%25E6%2584%258F%25E8%25A7%2581%25E5%258F%258D%25E9%25A6%2588"><span>意见反馈</span>
								</a> |
								<a href="http://sitemap.163.com/"><span> <select>
											<option selected>
												</a>
												<a href="">简体中文</a>
											
											<option>
												<a href="">繁体中文</a>
											
											<option>
												<a href="">English</a>
											
								</option>
								</div>		
								
								
							
                     
						</td>
						</tr>
						       
				</table>
			</center>
	</body>
</html>