<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String ctxPath = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="<%=ctxPath%>/static/css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript">
		function checkAdduser(){
			var user_Name = document.getElementsByName("user_Name")[0].value;
			if(user_Name == ""){
				alert("会员姓名不能为空！");
				return false;
			}
			return true;
		}
	</script>
</head>

<body>
<%
	Object msgo = request.getAttribute("msg");
	String msg = null;
	if(msgo != null){
		msg = msgo + "";
	}

%>
	<div class="place">
	    <span>位置：</span>
	    <ul class="placeul">
		    <li><a href="#">信息管理</a></li>
		    <li><a href="#">会员管理</a></li>
		    <li><a href="#">会员注册</a></li>
	    </ul>
    </div>
    
    <div class="formbody">
	    <div class="formtitle"><span>注册会员信息</span></div>
	    <form action="do_user_add.jsp" onsubmit="return checkAdduser()" class="forminfo">
		    <li><label>会员姓名</label><input name="user_Name" type="text" class="dfinput" placeholder="请输入会员姓名"/></li>
		    <li><label>会员性别</label>
		    	<cite>
		    		<input name="user_Gender" type="radio" value="男"/ checked="checked">男&nbsp;&nbsp;&nbsp;&nbsp;
		    		<input name="user_Gender" type="radio" value="女"/>女
		    	</cite>
		    </li>
			<li><label>会员级别</label>
		    	<select name="user_Level" class="dfinput">
					<option>普通(0注册积分)</option>
					<option>白银(200注册积分)</option>
					<option>黄金(1000注册积分)</option>
					<option>钻石(5000注册积分)</option>
				</select>
			</li>
		    <li><%if(msg != null){ %> <i class="ico-error"></i><span class="errorword"><%=msg %> </span><% } %></li>
		    <li><label>&nbsp;</label><input type="submit" class="btn" value="确认注册"/></li>
	    </form>
    </div>
</body>

</html>