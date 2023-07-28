<%@ page import="com.test.test2.dao.MemberDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// 한글깨짐 처리
		request.setCharacterEncoding("UTF-8");
		// int 형변환
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String dept = request.getParameter("dept");
		String position = request.getParameter("position");
		String duty = request.getParameter("duty");
		// DAO 객체 생성
		MemberDAO dao = new MemberDAO();
		int result = dao.save(id, name, phone, dept, position, duty);
		if(result > 0){
			
	%>
	
	<script>
		alert("저장 성공! index.jsp로 돌아갑니다.");
		location.href="index.jsp";
	</script>
	<%
		} else {
	%>
	
	<script>
		alert("저장 실패!!");
	</script>
	
	<%
		}
	%>
	<h3> 전달받은 값</h3>
	<p><%=name %></p>
</body>
</body>
</html>