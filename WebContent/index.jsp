<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file ="Header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wood craft</title>
  <link rel="stylesheet" type="text/css" href="css/final.css">
</head>
<body>

<div class="card bg-dark text-white">
  <img src="MainImg/aa.jpg" class="card-img" alt="aa">
  <div class="card-img-overlay">



<div class="card" style="background: transparent; border: none; ">
  <div class="card-body">


    <!-- Example single danger button -->
<div class="btn-group">
  <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background: transparent;">
    FURNITURE
  </button>
  <div class="dropdown-menu">
    <a class="dropdown-item" href="GetTable?cat=1">Sofa Sets</a>
    <a class="dropdown-item" href="GetTable?cat=2">Chairs</a>
    <a class="dropdown-item" href="GetTable?cat=3">Tables</a>
    <div class="dropdown-divider"></div>
    <a class="dropdown-item" href="#">Offer</a>
  </div>
</div>
   <!-- Example single danger button -->
<div class="btn-group">
  <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background: transparent;">
    DECOR
  </button>
  <div class="dropdown-menu">
    <a class="dropdown-item" href="GetTable?cat=4">Spiritual</a>
    <a class="dropdown-item" href="GetTable?cat=5">Wall Art</a>
    <a class="dropdown-item" href="#">Wall Accent</a>
    <div class="dropdown-divider"></div>
    <a class="dropdown-item" href="#">Offers</a>
  </div>
</div>
  <!-- Example single danger button -->
<div class="btn-group">
  <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background: transparent;">
    LIGHTING
  </button>
  <div class="dropdown-menu">
    <a class="dropdown-item" href="#">Floor Lamp</a>
    <a class="dropdown-item" href="#">Table Lamp</a>
    <a class="dropdown-item" href="#">Wall Lights</a>
    <div class="dropdown-divider"></div>
    <a class="dropdown-item" href="#">Offer</a>
  </div>
</div>
<!-- Example single danger button -->
<div class="btn-group">
  <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background: transparent;">
    INTERIOR
  </button>
  <div class="dropdown-menu">
    <a class="dropdown-item" href="#">Living Room</a>
    <a class="dropdown-item" href="#">Dining Room</a>
    <a class="dropdown-item" href="#">Bed Rooom</a>
    <div class="dropdown-divider"></div>
    <a class="dropdown-item" href="#">Offer</a>
  </div>
</div>
  </div>
</div>
</div>
</div>


<!-- second portion -->

<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
	  <a href="#"><img src="MainImg/three.jpg" alt="one"></a>
	  	<div class="carousel-caption">

          <h1 class="display-2">Deals of the Week</h1>
          <p class="lead"> UPTO 40% OFF</p>
        </div>
    </div>

    <div class="item">
     <a href="#"> <img src="MainImg/two.jpg" alt="two"></a>
      <div class="carousel-caption">
          <h1 class="display-1">Deals of the Week</h1>
          <p class="lead"> UPTO 40% OFF</p>
        </div>
    </div>


  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>



<!-- third portion -->

<div class="card mb-3" style="border: none;">

  <div class="card-body" style="text-align: center;">
    <h1 class="card-title">New Arrivals</h1>
  </div>
</div>

<div class="container">
	<div class="card-group">
  <div class="card">
    <a href="#"><img src="MainImg/s1.jpg" class="card-img-top" alt="s1"></a>
    <div class="card-body">
      <h5 class="card-title"><kbd>Study Table</kbd></h5>
      <p class="card-text">Study Table stock available</p>
      <p class="card-text"><small class="text-muted">UPTO 30% OFF</small></p>
    </div>
  </div>
  <div class="card">
    <a href="#"><img src="MainImg/s2.jpg" class="card-img-top" alt="s2"></a>
    <div class="card-body">
      <h5 class="card-title"><kbd>Dining Sets</kbd></h5>
      <p class="card-text">Dining Set stock avilable</p>
      <p class="card-text"><small class="text-muted">UPTO 30% OFF</small></p>
    </div>
  </div>
  <div class="card">

    <a href="#"><img src="MainImg/s3.jpg" class="card-img-top" alt="s3"></a>
    <div class="card-body">
      <h5 class="card-title"><kbd>Shoe Rack</kbd></h5>
      <p class="card-text">Shoe Rack stock avilable</p>
      <p class="card-text"><small class="text-muted">UPTO 30% OFF</small></p>
    </div>
  </div>
</div>
</div>

<!-- footer -->

 <%@ include file ="Footer.jsp" %>


</body>
</html>