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
    <form action="saveMember.jsp" name="saveForm">
        회원번호(자동발생): <input type="text" name="custno" value="<%=custno%>"> <br>
        회원성명: <input id="custname" type="text" name="custname"> <br>
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

</body>
</html>








