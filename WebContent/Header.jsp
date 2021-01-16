	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="com.niit.model.CustomerDetails" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link rel="stylesheet" type="text/css" href="css/final.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <title>WoodCarft</title>
  </head>
<body>

<div class="container"></div>

<div class="div">
<a href="ContactUs.jsp">Contact Us </a>
<span>|</span>
<% HttpSession hs=request.getSession();
CustomerDetails cd=(CustomerDetails)hs.getAttribute("tt");

if(cd==null){
	out.print("<a href='Registration.jsp'>Sign Up</a><span>|</span><a href='Login.jsp'>Log In</a>");
}else{
	out.print("<a href='index.jsp'>Sign out</a><span>|</span><a href='Logout'>Log out</a>");
}
%>
<!--  -->

</div>

<header>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
 <a class="navbar-brand" href="#" style="width: 300px">WOODCRAFT</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
    <ul class="navbar-nav mx-auto mt-2 mt-lg-1" >
      <li class="nav-item active">
       <a class="navbar-brand" href="index.jsp" style="width: 100px">
    <img src="headerImg/home.png" width="25" height="25" alt="home">
  </a>
 </li>

      <li class="nav-item">
        <a class="navbar-brand" href="extra.jsp" style="width: 100px">
    <img src="headerImg/cart.png" width="25" height="25" alt="cart">
  </a></li>

  <li class="nav-item">
        <a class="navbar-brand" href="#" style="width: 100px">
    <img src="headerImg/wish.png" width="25" height="25" alt="wishlist">
  </a></li>

  <li class="nav-item">
        <a class="navbar-brand" href="aboutus.jsp">
    <img src="headerImg/about.png" width="25" height="25" alt="wishlist">
  </a></li>

    </ul>
    <form class="form-inline" style="float: right;">
    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" style="padding-right: 60px; ">
    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>

  </form>

  </div>
</nav>

</header>
</body>
</html>