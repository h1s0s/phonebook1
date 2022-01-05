<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.PersonVo" %>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="java.util.List" %>
<%
	//주소에서 파라미터값을 가져온다
	String name = request.getParameter("name");//톰캣이 문서에 new resuest를 해서 쓸수 있는거임
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");

	//테스트
	System.out.println(name);
	System.out.println(hp);
	System.out.println(company);
	
	//전송된 값을 vo로 만든다.
	PersonVo personVo = new PersonVo(name, hp, company);
	
	//PhonDao를 메모리에 올린다.
	PhoneDao phoneDao = new PhoneDao();
	
	//저장
	phoneDao.personInsert(personVo);

	//전체 리스트를 가져온다
	List<PersonVo> personList = phoneDao.getPersonList();
	
	//리다이렉트
	response.sendRedirect("./list.jsp");
%>