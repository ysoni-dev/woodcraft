<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"  %>
    <!DOCTYPE html>
<html>
<head>
       <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link rel="stylesheet" type="text/css" href="css/final.css">
 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  
  <title>cart</title>
</head>
<body  >
    <div id=hehe></div>
        <div class="card">
            <div class="card-body" style="text-align: center;">
            <h1 class="display1"> CART</h1>
            </div>
          </div>

          <table class="table"> 
            <thead class="thead">
              <tr>
                
                <th scope="col">Item</th>
                   <th scope="col">Desc</th>
                  <th scope="col" >Price</th>
          
                <th scope="col">Quantity</th>
                                <th scope="col">Action</th>
                                  
                
              </tr>
            </thead>
             
            <tbody class="tbody">
             <c:forEach var="i" items = "${tc}">
              <tr >
               <td class="title"><img src="${i.image}"></td>
                  <td class="title">${i.item_name}</td>
                  <td class="price">Rs ${i.price}</td>
                  <span class="udata" style="display:none;">${i.price}</span>
                  <td class="qty"><form action="#">
                  <input type="number" name="qty" min="1" max="10" value="${i.quantity}" style="width:50px;"></form></td>
                  <td> <a href="index.jsp"><button type="submit" class="btn btn-dark" action="index.jsp">Add more</button></a>
                  <a href="Remove_cart?pname=${i.item_name}"><button type="button" class="btn btn-danger">Remove</button> </a></td>
                  
              </tr>
           </c:forEach>
            </tbody>
             
          </table>
          
        
          <div class="card">
  <div class="card-body" style="text-align: center;">

  <a href="index.jsp"><img src="img/qwqw.svg" height="30px" width="30px" style="float:right;"></a>
 
  
  </div>
  <form action="shippingaddress.jsp">
  	<button type="submit"  class="btn btn-primary" style="width:100px; margin-left:50%;">Purchase</button>
</form>
</div>

     <script>
       
     
     $(document).ready(function(){
     	$("input").change(function(){
     		var data=parseInt($(this).val());
     	
     		var price=parseInt($(this).parent().parent().parent().parent().parent().parent().find("span").html());
     		
     		var p=$(this).parent().parent().parent().find(".price");
     		p.html(data*price);
     	});
     });


     </script>

</body>
</html>