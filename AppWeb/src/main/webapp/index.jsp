<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="s" uri="/struts-tags"%>  
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<sx:head />
<script type="text/javascript">
    location.href="common/login.jsp";
    /*
    var counter=1;
    dojo.event.topic.subscribe("updateCounter", function(event, widget){
    	dojo.byId("counter").innerHTML = "Ther server has been hit "+ counter++ + " times";
    });
    */
</script>
</head>
<body>
    <%--
    <sx:datetimepicker label="时间" name="time" displayFormat="yyyy-MM-dd" value="%{2011-01-01}" />
    
    <sx:div href="common/login.jsp" updateFreq="3000" autoStart="false" startTimerListenTopics="startTimer">
        Loading...Please wait...
    </sx:div>
    
    <s:submit theme="simple" value="Start timer" onclick="dojo.event.topic.publish('startTimer')"></s:submit>
    
    <sx:div
        href="common/login.jsp"
        updateFreq="2000"
        afterNotifyTopics="updateCounter">
    Server time will be displayed here
    </sx:div>
    
    <s:div id="counter"></s:div>
    
    <sx:div id="div1"
        cssStyle="hight:50px;width:200px;border:1px solid brown"></sx:div>
        
    <sx:div id="div2"
        cssStyle="hight:50px;width:200px;border:1px solid brown"></sx:div>
    <sx:a href="common/login.jsp" targets="div1,div2">Update Time</sx:a>
     --%>
</body>
</html>