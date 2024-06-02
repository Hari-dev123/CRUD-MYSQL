<%@page import="com.crud.Insert_values"%>
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
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        Insert_values obj = new  Insert_values();
        obj.Insert_vale(email, password);
     
     %>
      <script>
           window.location.href="http://localhost:8083/Crud/insert.jsp"
      </script>
</body>
</html>