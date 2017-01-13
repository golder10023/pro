<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style type="text/css">
	table {
		border-style: solid;
		width: 500px;
	}
	
	td {
		text-align: center;
	}
	
</style>

</head>
<body>
	<table>
		<tr>
			<td>이름</td>
			<td>제목</td>
			<td>날짜</td>
			<td>조회</td>
		</tr>
		
		<s:iterator value="vlist">
		<tr>
			<td><s:property value="user_m"/></td>			
			<td>
				<a href="/Video/vread.action?videonum=<s:property value="videonum"/>"><s:property value="vfront"/><s:property value="vtitle"/></a><br>
				<%-- <video id="video" width="50" height="30" controls><source src="<s:property value='vlink'/>" type="video/mp4"></video> --%>
				<a href="/Video/vread.action?videonum=<s:property value='videonum'/>"><img src="<s:property value='vimg'/>" width="60px" height="40px"></a>
			</td>

			<td><s:date name="vdate" format="yyyy-MM-dd"/></td>
	
			<td><s:property value="vhit"/></td>
		
		</tr>
		</s:iterator>
		
			<tr>
			<td colspan="5">
				<a href="videoupload.jsp"><button>동영상등록</button></a>
			</td>
		</tr>
	
	</table>

</body>
</html>