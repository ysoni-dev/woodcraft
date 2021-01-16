<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/reg.css">
<title>Sign up</title>
</head>
<body>
<div class="card bg-dark text-white">
        <img src="img/hehe.jpg" class="card-img" alt="aa" style="  filter: blur;
        -webkit-filter: blur(4px);" height="650px">
        <div class="card-img-overlay">
  <form action="hibernateservlet" method="post" enctype="multipart/form-data">
  
  
      <div class="row">
        <div class="input-group">
      <div class="input-group-prepend">
        <span class="input-group-text">First and last name</span>
      </div>
      <input type="text" aria-label="First name" name="fname" class="form-control">
      <input type="text" aria-label="Last name" name="lname" class="form-control">
    </div>
  </div><br>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Email</label>
      <input type="email" class="form-control" name="email" id="inputEmail4">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Password</label>
      <input type="password" class="form-control" name="password" id="inputPassword4">
    </div>
  </div>
  <div class="form-group">
    <label for="inputAddress">Address</label>
    <input type="text" class="form-control" name="address" id="inputAddress" placeholder="1234 Main St">
  </div>
  <div class="form-group">
    <label for="inputAddress2">Address 2</label>
    <input type="text" class="form-control" name="address2" id="inputAddress2" placeholder="Apartment, studio, or floor">
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">City</label>
      <input type="text"  name="city" class="form-control" id="inputCity">
    </div>
 
   
   
  </div>
  
  <div class="form-group">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" id="gridCheck">
      <label class="form-check-label" for="gridCheck">
        Check me out
      </label>
    </div>
  </div>
  <button type="submit" class="btn btn-primary">Sign in</button>
 
</form>
</div></div>

<!--  <a href="getAllUser">getalluser</a>
<a href="deleteAllUser">deletealluser</a>
<a href="getAllCategory">getAllCategory</a>-->
</body>
</html>