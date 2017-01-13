<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
	#vtitle {
		width: 400px;
	}
	
	textarea {
		width: 400px;
		height: 150px;
	}
</style>



</head>
<body>

<form action="vupload" method="post" enctype="multipart/form-data">
	
	
		<table>
			<tr>
				<td>이름</td>
				<td class="inputText"><input type="text" name="user_m" required="required"></td>
			</tr>
			
			<tr>
				<td>말머리</td>
			<td><select name="vfront" id = "vfront" required="required">
			
						<option value="말머리 선택">-말머리 선택-</option>
						<option value="[용우]">[용우]</option>
						<option value="[원상]">[원상]</option>
						<option value="[현]">[현]</option>
						<option value="[소루]">[소루]</option>
						<option value="[히게]">[히게]</option>
				</select></td>
	
			</tr>
			
			<tr>
				<td>제목</td>
				<td class="inputText"><input type="text" id="vtitle" name="vtitle" required="required"></td>
			</tr>
			
			<tr>
				<td>내용</td>
				<td class="inputText"><textarea name="vcontent" required="required"></textarea></td>
			</tr>
			
			<tr>
				<td>동영상</td>
				<td><input type="file" name="data" accept="video/*" required="required"></td>
			</tr>
			
			
			<tr>
				<td>이미지</td>
				<td><input type="file" accept="image/*" name="data2" required="required"></td>
			</tr>
			 
			
			
			<tr>
				<td colspan="2">
					<input type="submit" value="확인">
					<a href="/video/vlist.action"><input type="button" value="취소"></a>
				</td>
			</tr>
		</table>

</form>



</body>
</html>