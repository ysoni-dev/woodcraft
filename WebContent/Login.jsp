<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	



    <title>login</title>
  </head>
<body>
<div class="card bg-dark text-white">
  <img src="images/hehe.jpg" class="card-img" alt="aa" style="  filter: blur;
  -webkit-filter: blur(4px);" height="650px">
  <div class="card-img-overlay">

<div class="main">
         <div class="col-md-6 col-sm-12">
            <div class="login-form">
               <form action="Login" method="post">
                  <div class="form-group">
                     <label>Email</label>
                     <input type="text" class="form-control" name ="email" placeholder="Email">
                  </div>
                  <div class="form-group">
                     <label>Password</label>
                     <input type="password" class="form-control" name="password"  placeholder="Password">
                  </div>
                  <button type="submit" class="btn btn-primary">Login</button>
                  <button  class="btn btn-black"><a href="Registration.jsp" style="text-decoration: none; color: black">Register</a></button>
               </form>
            </div>
         </div>
      </div>

</div></div>


</body>
</html>
