<!DOCTYPE html>
<html>
<head>
	<title>Think twice</title>
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  

  
</head>
<body>

	<nav class="navbar navbar-dark bg-dark">
  <a class="navbar-brand">Navbar</a>
  <form class="form-inline">
    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
  </form>
</nav>		


<div class="card-group">
  <div class="card">
    <img class="card-img-top" src="main/w4.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Item1</h5>
      <p class="card-text">20.09$</p>
      <button type="button" class="btn btn-dark">Add to Cart</button>
    </div>
  </div>

  <div class="card">
    <img class="card-img-top" src="main/w5.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">item2</h5>
      <p class="card-text">67.54$</p>
      <form action="Cart" method="get">
     
      <input type="hidden" name="pname" value="item2">
      <input type="hidden" name="img" value="main/w5.jpg">
      <input type="hidden" name="price" value="67.54">
            <button type="submit" class="btn btn-dark">Add to Cart</button> 
            </form>
              </div>
  </div>

  <div class="card">
    <img class="card-img-top" src="main/w6.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">item3</h5>
      <p class="card-text">56.09$</p>
            <button type="button" class="btn btn-dark">Add to Cart</button>    </div>
  </div>
</div>
<div class="card">
  <div class="card-body" style="text-align: center;">
  <h1 class="display1"> CART</h1>
  </div>
</div>
<table class="table">
  <thead class="thead">
    <tr>
      
      <th scope="col">Item</th>
        <th scope="col" >Price</th>

      <th scope="col">Quantity</th>
    </tr>
  </thead>
  <tbody class="tbody">
    <tr>

      <td>
      <img src="main/w4.jpg" height="100px;" width="100px;"> <div class="card-title">item1</div> 
  </td>
      <td class="price">
      	20.09
      </td>
      <td>1<span><button type="button" class="btn btn-danger">Remove</button>
</span>
      </td>
    </tr>
     <tr>

      <td>
      <img src="main/w5.jpg" height="100px;" width="100px;">
      <div class="card-title">item2</div> 
  </td>
      <td class="price">
       67.54
      </td>
      <td>1<span><button type="button" class="btn btn-danger">Remove</button>
</span>
      </td>
    </tr>
     <tr>

      <td>
      <img src="main/w6.jpg" height="100px;" width="100px;"> <div class="card-title">item3</div> 
  </td>
      <td class="price">
        56.09
      </td>
      <td>1<span><button type="button" class="btn btn-danger">Remove</button>
</span>
      </td>
    </tr>
  </tbody>
</table>

<div class="card">
  <div class="card-body" style="text-align: center;">
  <p class="display1"> <strong>Total</strong></p>
  <span>in progress..</span>
  </div>
  <button type="button" class="btn btn-secondary" style="float: right; width:200px;">Purchase</button>

</div>

<!--  <script type="text/javascript">



var removecartitem = document.getElementsByClassName('btn btn-danger')
console.log(removecartitem)
for(var i=0; i<removecartitem.length; i++){
    var button = removecartitem[i]
    button.addEventListener('click', function(event){
        var buttonclicked = event.target
        buttonclicked.parentElement.parentElement.parentElement.remove()
        updateCartTotal()
    })
}

function updateCartTotal (){
  var cartitems = document.getElementsByClassName('table')[0]
  
  var cartRows = document.getElementsByClassName('tbody')
  for(var i = 0; i<cartRows.length; i++){
    var cartRow = cartRows[i]
    var priceElement = cartRow.getElementsByClassName('price')[0]
  

    var pricce = priceElement.innerHTML
    console.log(pricce)
  }
}


  var addcartitem = document.getElementsByClassName('btn btn-dark')
console.log(addcartitem)
for(var i = 0; i<addcartitem.length; i++){
    var button = addcartitem[i]
    button.addEventListener('click', addtocartclicked)
}


function addtocartclicked(event){
  
  var button = event.target 
  var cardBody =  button.parentElement.parentElement
  var title= cardBody.getElementsByClassName('card-title')[0].innerText
  var price = cardBody.getElementsByClassName('card-text')[0].innerText
  var image = cardBody.getElementsByClassName('card-img-top')[0].src
  var data="[";
  var len= cardBody.getElementsByClassName('card-title').length;
  for (var i=0; i<len; i++){
    var titlename= cardBody.getElementsByClassName('card-title')[i].innerText
  var pprice = cardBody.getElementsByClassName('card-text')[i].innerText
data+="{name:"+titlename+",price:"+pprice+"}"; 
if(i<len-1){
  data+=",";
} else{
  data+="]";
}
}
  console.log(title,price,image)
  addItemToCart(title,price,image)
  location.replace("Cart?data="+data)
}



function addItemToCart(title,price,image){
var cartRow = document.createElement('div')
cartRow.classList.add('table')
var cartItems =document.getElementsByClassName('table')[0]
var cartRowData = `
<table class="table">
  <thead class="thead">
   
  </thead>
<tbody class="tbody">
    <tr>

      <td>
      <img src="${(image)}" height="100px;" width="100px;">
      <div class="card-title">${(title)}</div> 
  </td>
      <td class="price">
      	${(price)}
      </td>
      <td>1<span><button type="button" class="btn btn-danger">Remove</button>
</span>
      </td>
    </tr>
    </tbody></table>
`

cartRow.innerHTML= cartRowData
cartItems.append(cartRow)
cartRow.getElementsByClassName('btn btn-danger')[0].addEventListener('click',removecartitem)

var cartRow = document.getElementsByClassName('btn btn-danger')
console.log(cartRow)
for(var i=0; i<cartRow.length; i++){
    var button = cartRow[i]
    button.addEventListener('click', function(event){
        var buttonclicked = event.target
        buttonclicked.parentElement.parentElement.parentElement.remove()
       
    })
}

}

var purcahse = document.getElementsByClassName('btn btn-primary')
console.log(purcahse)
for(var i = 0; i<purcahse.length; i++){
    var button = purcahse[i]
    button.addEventListener('click', function(event){
      var buttonclicked = event.target
      buttonclicked== alert('ho gya ho gya')
    }
    )
}






</script> -->
</body>
</html>