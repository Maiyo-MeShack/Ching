<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>

<style>

body, html {
  height: 100%;
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

.bg-img {
  /* The image used */
  background-image: url("image.jpg");

  min-height: 380px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
  
}

.container{
padding-left: 25%;
  padding-right: 25%;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit button */
.btn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.btn:hover {
  opacity: 1;
}

</style>
</head>
<body>

<div class="container">
<h3>Register</h3>
<form action="Login" method="post">

<label for="userName"><b>UserName</b></label>
<input type="text" placeholder="Enter UserName" name="username" required>

<label for="Name"><b>Name</b></label>
<input type="text" placeholder="Enter Name" name="Name" required>

<label for="password"><b>Password</b></label>
<input type="password" placeholder="Enter Password" name="password1" required>

<label for="password"><b>Re-enter Password</b></label>
<input type="password" placeholder="Enter Password" name="password2" required>

<button type="submit" class="btn">Register</button>

</form>
</div>
</body>
</html>