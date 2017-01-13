<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
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
	
	.inputText {
		text-align: left;
	}
	
	#subject {
		width: 400px;
	}
	
	textarea {
		width: 400px;
		height: 150px;
	}
</style>

<title>답글 쓰기</title>
</head>
<body>
	
	<form action="/ex_board/board/reply" method="post">
	<input type="hidden" id="boardNum" name="boardNum" value="<%= request.getParameter("boardNum") %>">
	<input type="hidden" id="groupNum" name="groupNum" value="<%= request.getParameter("groupNum") %>">
	<input type="hidden" id="step" name="step" value="<%= request.getParameter("step") %>">
		<table>
			<tr>
				<td>이름</td>
				<td class="inputText"><input type="text" name="memberId" required="required"></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td class="inputText"><input type="password" name="memberPwd" required="required"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td class="inputText"><input type="text" id="subject" name="subject" required="required"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td class="inputText"><textarea name="content" required="required"></textarea></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="등록">
					<a href="/ex_board/board/list.action"><input type="button" value="취소"></a>
				</td>
			</tr>
		</table>
	</form>
	
</body>
</html>
