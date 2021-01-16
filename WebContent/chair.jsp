<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"  %>
    <%@ include file="Header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<!--intro -->

<div class="card" style="text-align: center;   font-family: 'robotolight';" >

  <h1 class="display-4" >Accent Chairs</h1>
  <div class="card-body">
    <h5 class="card-title">Chairs are a versatile and basic piece of furniture that we need in virtually every room of our home. A well-designed chair can enrich our lives immensely.  </h5>
    <div class="card-footer text-muted">
    (40 products)
  </div>
    <a href="#" class="btn btn-primary">Order Now</a>
  </div>
</div>

<!--sofas -->

<div class="container">
<div class="card-deck">
  <div class="card" style="border:none;" >
    <img src="chair\chair6.jpg" alt="..." class="img-thumbnail" >
    <div class="card-body">
      <h5 class="card-title">Eames Replica Chair in grey color</h5>
      <p class="card-text">By WoodCraft</p>
      <p class="card-text"><small class="text-muted">Rs 2299</small></p>
       <form action="AddCart" method="get">
     
        <input type="hidden" name="pname" value="High Chesile Dining Table">
      <input type="hidden" name="img" value="table\table15.jpg">
      <input type="hidden" name="price" value="44999">
   
            <button type="submit" class="btn btn-dark"style="float:right;">Add to Cart</button> 
            </form>
    </div>
  </div>
  <div class="card" style="border:none;">
    <img src="chair\chair7.jpg" alt="..." class="img-thumbnail">
    <div class="card-body">
      <h5 class="card-title">Argonomic Chair In Black Color</h5>
      <p class="card-text">By WoodCraft</p>
      <p class="card-text"><small class="text-muted">Rs 4399</small></p>
       <form action="AddCart" method="get">
     
        <input type="hidden" name="pname" value="Argonomic Chair In Black Color">
      <input type="hidden" name="img" value="chair\chair7.jpg">
      <input type="hidden" name="price" value="4399">
   
            <button type="submit" class="btn btn-dark"style="float:right;">Add to Cart</button> 
            </form>
    </div>
  </div>
  <div class="card" style="border:none;">
   <img src="chair\chair8.jpg" alt="..." class="img-thumbnail">
    <div class="card-body">
      <h5 class="card-title">Eames Replica Chair in grey color</h5>
      <p class="card-text">By WoodCraft</p>
      <p class="card-text"><small class="text-muted">Rs 2299</small></p>
       <form action="AddCart" method="get">
     
        <input type="hidden" name="pname" value="Eames Replica Chair in grey color">
      <input type="hidden" name="img" value="chair\chair8.jpg">
      <input type="hidden" name="price" value="2299">
   
            <button type="submit" class="btn btn-dark"style="float:right;">Add to Cart</button> 
            </form>
    </div>
  </div>
</div>


<!--sofas -->

<div class="card-deck">
  <div class="card" style="border:none;" >
    <img src="chair\chair9.jpg" alt="..." class="img-thumbnail" >
    <div class="card-body">
      <h5 class="card-title">Buick Iconic Chair Grey in color </h5>
      <p class="card-text">By WoodCraft</p>
      <p class="card-text"><small class="text-muted">Rs 5999</small></p>
       <form action="AddCart" method="get">
     
        <input type="hidden" name="pname" value="Buick Iconic Chair Grey in color">
      <input type="hidden" name="img" value="chair\chair9.jpg">
      <input type="hidden" name="price" value="5999">
   
            <button type="submit" class="btn btn-dark"style="float:right;">Add to Cart</button> 
            </form>
    </div>
  </div>
  <div class="card" style="border:none;">
    <img src="chair\chair10.jpg" alt="..." class="img-thumbnail">
    <div class="card-body">
      <h5 class="card-title">Chopper guest in orange color</h5>
      <p class="card-text">By WoodCraft</p>
      <p class="card-text"><small class="text-muted">Rs 4899</small></p>
       <form action="AddCart" method="get">
     
        <input type="hidden" name="pname" value="Chopper guest in orange color">
      <input type="hidden" name="img" value="chair\chair10.jpg">
      <input type="hidden" name="price" value="4899">
   
            <button type="submit" class="btn btn-dark"style="float:right;">Add to Cart</button> 
            </form>
    </div>
  </div>
  <div class="card" style="border:none;">
   <img src="chair\chair11.jpg" alt="..." class="img-thumbnail">
    <div class="card-body">
      <h5 class="card-title">Plastic Chair</h5>
      <p class="card-text">By WoodCraft</p>
      <p class="card-text"><small class="text-muted">Rs 600</small></p>
       <form action="AddCart" method="get">
     
        <input type="hidden" name="pname" value="Plastic Chair">
      <input type="hidden" name="img" value="chair\chair11.jpg">
      <input type="hidden" name="price" value="600">
   
            <button type="submit" class="btn btn-dark"style="float:right;">Add to Cart</button> 
            </form>
    </div>
  </div>
</div>

<!--sofas -->

<div class="card-deck" style="border:none;">
  <div class="card" >
    <img src="chair\Chair.jpg" alt="yhi" class="img-thumbnail" >
    <div class="card-body">
      <h5 class="card-title">Buick Iconic Chair Pair White in color</h5>
      <p class="card-text">By WoodCraft</p>
      <p class="card-text"><small class="text-muted">Rs 11000 </small></p>
       <form action="AddCart" method="get">
     
        <input type="hidden" name="pname" value="Buick Iconic Chair Pair White in color">
      <input type="hidden" name="img" value="chair\Chair.jpg">
      <input type="hidden" name="price" value="11000">
   
            <button type="submit" class="btn btn-dark"style="float:right;">Add to Cart</button> 
            </form>
    </div>
  </div>
  <div class="card" style="border:none;">
    <img src="chair\chair1.jpg" alt="..." class="img-thumbnail">
    <div class="card-body">
      <h5 class="card-title">Luxury Tufted Chair in blue color</h5>
      <p class="card-text">By WoodCraft</p>
      <p class="card-text"><small class="text-muted">RS 35000</small></p>
       <form action="AddCart" method="get">
     
        <input type="hidden" name="pname" value="Luxury Tufted Chair in blue color">
      <input type="hidden" name="img" value="chair\chair1.jpg">
      <input type="hidden" name="price" value="35000">
   
            <button type="submit" class="btn btn-dark"style="float:right;">Add to Cart</button> 
            </form>
    </div>
  </div>
  <div class="card" style="border:none;">
   <img src="chair\chair2.jpg" alt="..." class="img-thumbnail">
    <div class="card-body">
      <h5 class="card-title">Soft deck brown in color</h5>
      <p class="card-text">By WoodCraft</p>
      <p class="card-text"><small class="text-muted">Rs 13000</small></p>
       <form action="AddCart" method="get">
     
        <input type="hidden" name="pname" value="Soft deck brown in color">
      <input type="hidden" name="img" value="chair\chair2.jpg">
      <input type="hidden" name="price" value="13000">
   
            <button type="submit" class="btn btn-dark"style="float:right;">Add to Cart</button> 
            </form>
    </div>
  </div>
</div>

<!--sofas -->

<div class="card-deck" style="border:none;">
  <div class="card" >
    <img src="chair\chair3.jpg" alt="..." class="img-thumbnail" >
    <div class="card-body">
      <h5 class="card-title">Sara Rocking chair with red ulpholsetry</h5>
      <p class="card-text">By WoodCraft</p>
      <p class="card-text"><small class="text-muted">Rs 27000</small></p>
       <form action="AddCart" method="get">
     
        <input type="hidden" name="pname" value="Sara Rocking chair with red ulpholsetry">
      <input type="hidden" name="img" value="chair\chair3.jpg">
      <input type="hidden" name="price" value="27000">
   
            <button type="submit" class="btn btn-dark"style="float:right;">Add to Cart</button> 
            </form>
    </div>
  </div>
  <div class="card" style="border:none;">
    <img src="chair\chair4.jpg" alt="..." class="img-thumbnail">
    <div class="card-body">
      <h5 class="card-title">Classic Betty Chair in Brown Color</h5>
      <p class="card-text">By WoodCraft</p>
      <p class="card-text"><small class="text-muted">RS 43599</small></p>
       <form action="AddCart" method="get">
     
        <input type="hidden" name="pname" value="Classic Betty Chair in Brown Color">
      <input type="hidden" name="img" value="chair\chair4.jpg">
      <input type="hidden" name="price" value="43599">
   
            <button type="submit" class="btn btn-dark"style="float:right;">Add to Cart</button> 
            </form>
    </div>
  </div>
  <div class="card" style="border:none;">
   <img src="chair\chair5.jpg" alt="..." class="img-thumbnail">
    <div class="card-body">
      <h5 class="card-title">Abstract print Wing Chair</h5>
      <p class="card-text">By WoodCraft</p>
      <p class="card-text"><small class="text-muted">RS 58399</small></p>
       <form action="AddCart" method="get">
     
        <input type="hidden" name="pname" value="Abstract print Wing Chair">
      <input type="hidden" name="img" value="chair\chair5.jpg">
      <input type="hidden" name="price" value="58399">
   
            <button type="submit" class="btn btn-dark"style="float:right;">Add to Cart</button> 
            </form>
    </div>
  </div>
</div>

<!--sofas -->

<div class="card-deck">
  <div class="card" style="border:none;" >
    <img src="chair\chair12.jpg" alt="..." class="img-thumbnail" >
    <div class="card-body">
      <h5 class="card-title">Multi color chair</h5>
      <p class="card-text">Patch Iconic chair</p>
      <p class="card-text"><small class="text-muted">Rs 13999</small></p>
       <form action="AddCart" method="get">
     
        <input type="hidden" name="pname" value="Abstract print Wing Chair">
      <input type="hidden" name="img" value="chair\chair5.jpg">
      <input type="hidden" name="price" value="58399">
   
            <button type="submit" class="btn btn-dark"style="float:right;">Add to Cart</button> 
            </form>
    </div>
  </div>
  <div class="card" style="border:none;">
    <img src="chair\chair13.jpg" alt="..." class="img-thumbnail">
    <div class="card-body">
      <h5 class="card-title">Round Flatterd Plastic Chair</h5>
      <p class="card-text">By WoodCraft</p>
      <p class="card-text"><small class="text-muted">Rs 1499</small></p>
       <form action="AddCart" method="get">
     
        <input type="hidden" name="pname" value="Abstract print Wing Chair">
      <input type="hidden" name="img" value="chair\chair5.jpg">
      <input type="hidden" name="price" value="58399">
   
            <button type="submit" class="btn btn-dark"style="float:right;">Add to Cart</button> 
            </form>
    </div>
  </div>
  <div class="card" style="border:none;">
   <img src="chair\chair14.jpg" alt="..." class="img-thumbnail">
    <div class="card-body">
      <h5 class="card-title">Wooden Iconic Chair</h5>
      <p class="card-text">By WoodCraft</p>
      <p class="card-text"><small class="text-muted">Rs 37899</small></p>
       <form action="AddCart" method="get">
     
        <input type="hidden" name="pname" value="Abstract print Wing Chair">
      <input type="hidden" name="img" value="chair\chair5.jpg">
      <input type="hidden" name="price" value="58399">
   
            <button type="submit" class="btn btn-dark"style="float:right;">Add to Cart</button> 
            </form>
    </div>
  </div>
</div>
<c:forEach var="i" items = "${list}">
<div class="card-deck">
 <div class="card" style="border:none;">
    <img src="${i.img}" class="card-img-top" alt="sofa" style="height:300px; width:600px;">
    <div class="card-body">
      <h5 class="card-title">${i.name}</h5>
      <p class="card-text">${i.desc}</p>
      <p class="card-text"><small class="text-muted">${i.price}</small></p>
    </div>
  </div>
 
  </div>
</c:forEach>

</div>

<!-- footer -->

 <%@ include file ="Footer.jsp" %>	
</body>
</html>