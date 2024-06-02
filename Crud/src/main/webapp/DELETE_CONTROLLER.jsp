<%@page import="com.crud.DELETE_VALUES"%>
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
      String username = request.getParameter("username");
      DELETE_VALUES dv = new DELETE_VALUES();
      dv.delete_user(username);
      
   %>
   <script type="text/javascript">
         window.location.href="http://localhost:8083/Crud/insert.jsp"
   </script>
</body>
</html>