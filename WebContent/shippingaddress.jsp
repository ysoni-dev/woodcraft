<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="com.niit.model.CustomerDetails" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    
        <link rel="stylesheet" type="text/css" href="csds/final.css">
    
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
      <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>

    
        <title>Hello, world!</title>
      </head>
<body>


  
<div class="row" style="height:100vh;">
    <div class="col image" style="background: url(img/cc.jpg);" ></div>   
    <div class="col" style="background-image: linear-gradient(to bottom, #f6fffd, #ecfbfd, #e5f6ff, #e4f0ff, #eae8ff, #eee4fe, #f4e0fb, #fadcf7, #f7def6, #f4dff4, #f1e1f2, #eee2f0);
    ">
        <div class="card text-center" style="border: none;background: transparent;">
            <div class="card-header" style="background: transparent; border: none;">
                <h1 class="display-3"> Shipping Address</h1> 
            </div>
            <div class="card-body">
                <form method="POST" action="thanku.jsp" style="border: none; ">
                    <div class="form-row">
                      <div class="form-group col-md-6">
                        <label for="inputEmail4">Email</label>
                        <input type="email" class="form-control" id="inputEmail4">
                      </div>
                      <div class="form-group col-md-6">
                        <label for="inputPassword4">Password</label>
                        <input type="password" class="form-control" id="inputPassword4">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="inputAddress">Address</label>
                      <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
                    </div>
                    
                    <div class="form-row">
                      <div class="form-group col-md-6">
                        <label for="inputCity">City</label>
                        <input type="text" class="form-control" id="inputCity">
                      </div>
                      <div class="form-group col-md-4">
                        <label for="inputState">State</label>
                       <select id="inputState" class="form-control" >
        <option selected>Choose State..</option>
        <option>Andhra Pradesh</option>
        <option>Arunachal Pradesh </option>
        <option>Ahmedabad </option>
        <option>Assam</option>
        <option>Bihar</option>
        <option>Bangalore</option>
        <option>Chennai </option>
        <option>Chhattisgarh</option>
        <option>Delhi</option>
        <option>Goa</option>
        <option>Gujarat </option>
        <option>Haryana </option>
        <option>Himachal Pradesh </option>
        <option>Hyderabad </otion>
        <option>Jharkhand</option>
        <option>Karnataka</option>
        <option>Chennai </option>
        <option>Kerala</option>
  		<option>Mumbai</option>
        <option>Madhya Pradesh</option>
        <option>Maharashtra</option>
        <option>Manipur</option>
        <option>Meghalaya</option>
        <option>Mizoram</option>
        <option>Nagaland</option>
        <option>Odisha </option>
        <option>Punjab</option>
        <option>Rajasthan</option>
        <option>Seemandhras</option>
        <option>Sikkim </option>
        <option>Tamil Nadu</option>
        <option>Telangana</option>
        <option>Tripura</option>
        <option>Uttar Pradesh</option>
        <option>Uttarakhand</option>
        <option>West Bengal</option>
      
      </select>
                      </div>
                      <div class="form-group col-md-2">
                        <label for="inputZip">Zip</label>
                        <input type="text" class="form-control" id="inputZip">
                      </div>
                    </div>
                    <br>
                    <div class="form-row">
                        <legend class="col-form-label col-sm-2 pt-0">Payment Method:</legend>
                        <div class="col-sm-10">
                            <div class="form-check">
                              <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1" checked>
                              <label class="form-check-label" for="gridRadios1">
                                Cash on delievery
                              </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
                                <label class="form-check-label" for="gridRadios2">
                                  E-wallets
                                </label>
                              </div>
                            </div>
                            
                   </div>
                   <br> <br> <br>
                    <button type="submit" class="btn btn-primary">Purchase</button>
                  </form>
            </div>
          
          </div>
        
    </div>  
   
</div>
</div>
</body>
</html>