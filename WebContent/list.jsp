<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="com.javaex.vo.PersonVo" %>

<%
	PhoneDao phoneDao = new PhoneDao();
	List<PersonVo> personList = phoneDao.getPersonList();
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>[Phonebook01]</h1>
		
		<h2>전화번호 리스트</h2>
		
		<p>입력한 정보 내역입니다</p>
		
		<% for(int i=0; i<personList.size(); i++) { %>
		<table border="1">
			<tr>
				<td>이름(name)</td>
				<td><%= personList.get(i).getName() %></td>
			</tr>
			<tr>
				<td>핸드폰(hp)</td>
				<td><%= personList.get(i).getHp() %></td>
			</tr>
			<tr>
				<td>회사(company)</td>
				<td><%= personList.get(i).getCompany() %></td>
			</tr>
			<tr>
				<td><a href="./updateForm.jsp?id=<%= personList.get(i).getPersonId() %>&name=<%= personList.get(i).getName()%>&hp=<%= personList.get(i).getHp()%>&company=<%= personList.get(i).getCompany() %>">[수정]</a></td>
				<td><a href="./delete.jsp?id=<%= personList.get(i).getPersonId() %>">[삭제]</a></td>
			</tr>
		</table>
		<br>
		<% } %>
		<a href="./writeForm.jsp">전화번호 등록폼</a> <%--.으로 하면 현재위치/이동 --%>
	</body>
</html>