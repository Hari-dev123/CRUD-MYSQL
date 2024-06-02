<%@page import="com.crud.User_Bean"%>
<%@page import="com.crud.EDIT_VALUE"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
    // Function to disable back button
    function disableBackButton() {
        window.history.forward();
    }
    disableBackButton(); // Call the function immediately after page load
</script>
</head>
<body>
    <%
       response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
       String username = request.getParameter("email");
       String password = request.getParameter("password");
       User_Bean us = new User_Bean();
       us.setUsername(username);
       us.setPassword(password);
       
       EDIT_VALUE ed = new EDIT_VALUE();
       ed.Update_user(us);
    %>
    <script type="text/javascript">
        // Redirect the user to another page after a delay
        setTimeout(function() {
            window.location.href = "http://localhost:8083/Crud/insert.jsp";
        }, 2000); // Redirect after 2 seconds
    </script>
</body>
</html>
