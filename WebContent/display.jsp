<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Form</title>
</head>
<body style="background-color:lightgrey;">
     <h1>Login Form</h1>
     <%
     String firstName = request.getParameter("first");
     String lastName = request.getParameter("last");
     String emailAddress = request.getParameter("email");
     String gender = request.getParameter("gender");
     String dateOfBirth = request.getParameter("dob");
     %>
     <table border="0">
         <tbody>
            <tr>
               <td>First Name : </td>
               <td><%= firstName %></td>
            </tr>
             <tr>
               <td>Last Name : </td>
               <td><%= lastName %></td>
            </tr>
             <tr>
               <td>Email Address : </td>
               <td><%= emailAddress %></td>
            </tr>
             <tr>
               <td>Gender : </td>
               <td><%= gender %></td>
            </tr>
             <tr>
               <td>Date Of Birth : </td>
               <td><%= dateOfBirth %></td>
            </tr>
         </tbody>
     </table>
</body>
</html>