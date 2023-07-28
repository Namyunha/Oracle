<%@ page import="com.test.test2.dao.MemberDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        * {
            padding: 0;
            margin: 0;
        }
        #contents {
            background-color: burlywood;
            padding: 20px;
            text-align: center;

        }
    </style>
</head>
<%
    MemberDAO memberDAO = new MemberDAO();
    int custno = memberDAO.getCustNo();
%>
<body>
<%@include file="header.jsp"%>
<%@include file="nav.jsp"%>
<div id="contents">
    <form id="saveForm" action="saveMember.jsp" name="saveForm">
        회원번호(자동발생): <input type="text" name="custno" value="<%=custno%>"> <br>
        회원성명: <input id="custname" type="text" name="custname" > <br>
        회원전화: <input id="phone" type="text" name="phone"> <br>
        회원주소: <input id="address" type="text" name="address"> <br>
        가입일자: <input id="joindate" type="text" name="joindate"> <br>
        고객등급(A:VIP, B:일반, C:직원): <input id="grade" type="text" name="grade"> <br>
        도시코드: <input id="city" type="text" name="city"> <br>
        <input type="button" value="등록" onclick="saveCheck()">
        <input type="button" onclick="location.href='findMember.jsp'" value="조회">
    </form>
</div>
<%@include file="footer.jsp"%>
<script>
	const saveCheck = () =>{
		const saveForm = document.querySelector("#saveForm");
		const custname = document.querySelector("#custname").value;
		const phone = document.querySelector("#phone").value;
		const address = document.querySelector("#address").value;
		const joindate = document.querySelector("#joindate").value;
		const grade = document.querySelector("#grade").value;
		const city = document.querySelector("#city").value;
		if(custname == ""){
			alert("회원성명이 입력되지 않았습니다.");
		} else if(phone == "") {
			alert("연락처가 입력되지 않았습니다.");
		} else if(address == "") {
			alert("주소가 입력되지 않았습니다.");
		} else if(joindate == "") {
			alert("날짜가 입력되지 않았습니다.");
		} else if(grade == "") {
			alert("고객등급이 입력되지 않았습니다.");
		} else if(city == "") {
			alert("도시코드가 입력되지 않았습니다.");
		} else {
			alert("회원등록이 완료되었습니다.")
			saveForm.submit();
		}
	}
</script>
</body>
</html>








