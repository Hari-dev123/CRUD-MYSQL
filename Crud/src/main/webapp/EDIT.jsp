<%@page import="com.crud.User_Bean"%>
<%@page import="com.crud.EDIT_VALUE"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style>
    .container {
        margin-top: 70px;
    }
</style>
</head>
<body>
      <%   String username = request.getParameter("username"); 
           EDIT_VALUE obj = new EDIT_VALUE();
           User_Bean us =  obj.get_values_of_users(username);
      %>
     <div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <h2 class="text-center">Edit User</h2>
            <form action="EDIT_CONTROLLER.jsp" class="form-container">
                <input type="hidden" name="username" value="<%= username %>">
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" class="form-control" id="email" name="email" value="<%= username %>">
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="text" class="form-control" id="password" name="password" value="<%=us.getPassword() %>">
                </div>
                <button type="submit" class="btn btn-primary btn-block">Update</button>
            </form>
        </div>
    </div>
</div>
       
</body>
</html>