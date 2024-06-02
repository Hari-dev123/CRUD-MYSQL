<%@page import="java.util.Iterator"%>
<%@page import="com.crud.User_Bean"%>
<%@page import="com.crud.Read_values"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Information</title>
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <style>
    .container {
      margin-top: 70px;
    }
    .table-bordered {
      border: 1px solid #dee2e6;
    }
  </style>
</head>
<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h2 class="text-center">User Information</h2>
                <form action="insert_controller.jsp" class="form-container">
                    <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="email" class="form-control" id="email" name="email">
                    </div>
                    <div class="form-group">
                        <label for="password">Password:</label>
                        <input type="password" class="form-control" id="password" name="password">
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
                <hr>
                   <% 
                              Read_values obj = new Read_values();
                              List<User_Bean> list = obj.get_Values();
                              Iterator<User_Bean> it_list = list.iterator();
    %>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Email</th>
                            <th>Password</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% while(it_list.hasNext()) {
                            User_Bean obj2 = it_list.next();
                        %>
                        <tr>
                            <td><%= obj2.getUsername() %></td>
                            <td><%= obj2.getPassword() %></td>
                            <td><a href="EDIT.jsp?username=<%=obj2.getUsername()%>" class="btn btn-warning">Edit</a></td>
                            <td><a href="DELETE_CONTROLLER.jsp?username=<%= obj2.getUsername()%>" class="btn btn-danger">Delete</a></td>
                        </tr>
                        <% } %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- Bootstrap JS (optional) -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
