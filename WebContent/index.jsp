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
<hr/>
<form name="aForm" action="display.jsp" method="POST">
    <table border="0">
        <tbody>
           <tr>
                <td>First Name : </td>
                <td><input type="text" name="first" value="" size="50" /></td>
           </tr>
           <tr>
                <td>Last Name : </td>
                <td><input type="text" name="last" value="" size="50" /></td>
           </tr>
            <tr>
                <td>Email Address : </td>
                <td><input type="text" name="email" value="" size="50" /></td>
           </tr>
            <tr>
                <td>Gender : </td>
                <td><select name="gender">
                         <option>Male</option>
                         <option>Female</option>
                    </select></td>
           </tr>
            <tr>
                <td>Date Of Birth</td>
                <td><input type="text" name="dob" value="DD/MM/YY" size="20" /></td>
           </tr>
        </tbody>
      </table>
       <input type="submit" value="Login" name="login" />
       <input type="reset" value="Logout" name="logout"/>
    </form>
</body>
</html>