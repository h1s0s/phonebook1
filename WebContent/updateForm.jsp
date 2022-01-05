<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	int id = Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
 %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>[Phonebook1]</h1>
		
		<h2>전화번호 수정화면</h2>
		
		<p>
			수정 화면 입니다. 아래 항목을 수정하고 "수정" 버튼을 클릭하세요.
		</p>
		<form action="./update.jsp?" method="get">
			이름(name) : <input type="text" name="name" value="<%= name %>"> <br>
			핸드폰(hp) : <input type="text" name="hp" value="<%= hp %>"> <br>
			회사(company) : <input type="text" name="company" value="<%= company %>"> <br>
			코드(id) : <input type="text" name="id" value=<%= id %>> <br>
			<button type="submit">수정</button>
		</form>
	</body>
</html>