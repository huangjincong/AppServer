<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="s" uri="/struts-tags"%>  
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%> 
<html>
<head>
<title>登陆页面</title>
    <link rel="stylesheet" type="text/css" href="../js/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="../js/themes/icon.css">
	<script type="text/javascript" src="../js/jquery.min.js"></script>
	<script type="text/javascript" src="../js/jquery.easyui.min.js"></script>
<sx:head/>
<script type="text/javascript">
    
    dojo.event.topic.subscribe("loginInfo", function(event, widget){
    	dojo.byId("userName").innerHTML = "<%= session.getAttribute("password") %>";
    });
</script>
</head>
<body>
    <div class="easyui-panel" title="New Topic" style="width:400px">
    <s:form id="loginForm" action="user_login.action" >
        <input class="easyui-validatebox" type="text" name="name" data-options="required:true"></input>
        <s:textfield name="userName" label="User Name"  ></s:textfield>
        <s:password name="password" label="Password"></s:password>
        <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">Submit</a>
    </s:form>
    </div>
    <sx:submit formId="loginForm" afterNotifyTopics="loginInfo"></sx:submit>
    <sx:div id="userName"></sx:div>
    
    <sx:tabbedpanel id="tab1" cssStyle="width: 500px; height: 300px;" doLayout="true">
		<sx:div id="left" label="标签一">
		  我是tab标签
		</sx:div>
		<sx:div id="middle" label="标签二">
		  我是另外一个tab标签
		</sx:div>
	</sx:tabbedpanel>
	
	<select name="players" id="players" >    
        <option value="">Select an Arsenal Player</option>    
        <option value="Arshavin" selected="selected">Andrey Arshavin</option>    
        <option value="Vermaelen">Thomas Vermaelen</option>    
    </select>
    
    <div data-dojo-type="dijit.Dialog" id="foobar" title="Foo!">
	   <p>I am some content</p>
	</div>
	<sx:bind id="binder"
	    href="common/result.jsp"
	    sources="show"
	    events="onclick"
	    targets="foobar"></sx:bind>
	<button id="show">show</button>&nbsp; 
	<button onclick="hideMessage()">hide</button>&nbsp;
	
</body>
</html>