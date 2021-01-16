<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.niit.Dao.ProductDao" %>
        <%@page import="com.niit.Dao.ProductDaoImpl" %>
        <%@page import="com.niit.model.Product" %>
        <%@page import="controller.UpdateCategory" %>
          <%@page import="com.niit.Dao.CategoryDao" %>
    <%@page import="com.niit.Dao.CategoryDaoimpl" %>
    <%@page import="java.util.List" %>
    <%@page import="com.niit.model.Category" %>
    
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  
  <link rel="shortcut icon" href="img/favicon.png">

  <title>Widgets | Creative - Bootstrap 3 Responsive Admin Template</title>

  <!-- Bootstrap CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="css/bootstrap-theme.css" rel="stylesheet">
  <!-- external css -->
  <!-- font icon -->
  <link href="css/elegant-icons-style.css" rel="stylesheet" />
  <link href="css/font-awesome.min.css" rel="stylesheet" />
  <!-- Custom styles -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet" />

  <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
  <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
      <script src="js/lte-ie7.js"></script>
    <![endif]-->

    <!-- =======================================================
      Theme Name: NiceAdmin
      Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
      Author: BootstrapMade
      Author URL: https://bootstrapmade.com
    ======================================================= -->
    <style type="text/css">.container1{
        display: flex;
        justify-content: center;
        flex-direction: row;
      }</style>
</head>

<body>
 <!-- container section start -->
  <section id="container" class="">
    <!--header start-->
    <header class="header dark-bg">
      <div class="toggle-nav">
        <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
      </div>

      <!--logo start-->
      <a href="index.html" class="logo">Y <span class="lite">Admin</span></a>
      <!--logo end-->

      <div class="nav search-row" id="top_menu">
        <!--  search form start -->
        <ul class="nav top-menu">
          <li>
            <form class="navbar-form">
              <input class="form-control" placeholder="Search" type="text">
            </form>
          </li>
        </ul>
        <!--  search form end -->
      </div>

      <div class="top-nav notification-row">
                 <!-- user login dropdown start-->
          <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="profile-ava">
                                <img alt="" src="images/bdygeb.jpg" style="height:40px; width:30px;">
                            </span>
                            <span class="username">Yogesh Soni</span>
                            <b class="caret"></b>
                        </a>
            <ul class="dropdown-menu extended logout">
              <div class="log-arrow-up"></div>
              <li class="eborder-top">
                <a href="#"><i class="icon_profile"></i> My Profile</a>
              </li>
              <li>
                <a href="#"><i class="icon_mail_alt"></i> My Inbox</a>
              </li>
              <li>
                <a href="#"><i class="icon_clock_alt"></i> Timeline</a>
              </li>
              <li>
                <a href="#"><i class="icon_chat_alt"></i> Chats</a>
              </li>
              <li>
                <a href="login.html"><i class="icon_key_alt"></i> Log Out</a>
              </li>
              <li>
                <a href="documentation.html"><i class="icon_key_alt"></i> Documentation</a>
              </li>
              <li>
                <a href="documentation.html"><i class="icon_key_alt"></i> Documentation</a>
              </li>
            </ul>
          </li>
          <!-- user login dropdown end -->
        </ul>
        <!-- notificatoin dropdown end-->
      </div>
    </header>
    <!--header end-->

    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu">
          <li class="">
            <a class="" href="Admin.jsp">
                          <i class="icon_house_alt"></i>
                          <span>Dashboard</span>
                      </a>
          </li>
           <li>
            <a class="" href="getAllUser">
                          <i class="icon_genius"></i>
                          <span>All User</span>
                      </a>
          </li>
         <!--   <li class="sub-menu">
            <a href="javascript:;" class="">
                          <i class="icon_document_alt"></i>
                          <span>Forms</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
            <ul class="sub">
              <li><a class="" href="form_component.html">Form Elements</a></li>
              <li><a class="" href="form_validation.html">Form Validation</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;" class="">
                          <i class="icon_desktop"></i>
                          <span>UI Fitures</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
            <ul class="sub">
              <li><a class="" href="general.html">Components</a></li>
              <li><a class="" href="buttons.html">Buttons</a></li>
              <li><a class="" href="grids.html">Grids</a></li>
            </ul>
          </li>
          
          -->
          <li class="sub-menu">
            <a href="javascript:;" class="">
                          <i class="icon_genius"></i>
                          <span>Category</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                    <ul class="sub">
              <li><a class="" href="dashboard.jsp">Category Data</a></li>
              <li><a class="" href="getAllCategory">Category List</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;" class="">
                          <i class="icon_genius"></i>
                          <span>Product</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
            <ul class="sub">
              <li><a class="" href="AProduct.jsp">Product Data</a></li>
              <li><a class="" href="GetProduct">Product List</a></li>
            </ul>
          </li>
          
          <!--  <li>
            <a class="" href="chart-chartjs.html">
                          <i class="icon_piechart"></i>
                          <span>Charts</span>

                      </a>

          </li>-->

        

        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
    <!--sidebar end-->

    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="icon_genius"></i>Product</h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
              <li><i class="icon_genius"></i>Product</li>

          </div>
        </div>
        
        
         
        
        
        



----------
<div class="card bg-dark text-secondary" style="height: 700px; width: 100%  ;">
   <img class="card-img" src="img/ww.jpg" alt="Card image" style=" filter: blur; -webkit-filteur: blur(2px); height: 100%;">
  <div class="card-img-overlay">


<div class="container22">
    <div class="card bg-dark text-secondary" style="height: 600px; width: 800px; ">
  <img class="card-img" src="img/ww.jpg" alt="Card image" style=" filter: blur; -webkit-filter: blur(2px); height: 600px;">
  <div class="card-img-overlay" >


<div class="row" >
 <div class="col-lg-12" >
            <section class="panel" style="background: transparent; border:none;">
            <header  class="text-center" >
                <h2 class="display-4" style="color: white;" style="float: 200px,200px; "><b>PRODUCT</b></h2>
              </header>
               <div class="panel-body" style="border:none;">
               <div class="form" >
               
               <form class="form-validate form-horizontal" id="feedback_form" method="post" action="Updateproduct"  enctype="multipart/form-data" style="border:none;">
               <% String str = request.getParameter("update"); 
	ProductDao pdao = new ProductDaoImpl(); 
	int dataid = Integer.parseInt(str.trim());
	Product prod = pdao.getProductByID(dataid);%> 
	<br><br>
	        <input type="hidden"  class="form-control mb-4" name="id" placeholder="Name" value=<%=prod.getProductId() %> style="background: transparent; color: black;">
	
                    <div class="form-group" style="border:none;">
                      <label for="formGroupExampleInput" class="control-label col-lg-2" style="color: white;"><b>Name</b></label>
                      <div class="col-lg-10">
                        <input class="form-control" value=<%=prod.getName() %> id="cname" name="name" minlength="5" type="text" required style="background: transparent;" />
                      </div>
                    </div>
                    <div class="form-group" style="border:none;">
                   <label for="formGroupExampleInput" class="control-label col-lg-2" style="color: white;"><b>Description</b></label>
                      <div class="col-lg-10">
                        <input class="form-control" id="cname" value=<%=prod.getDesc() %> name="desc" minlength="5" type="text" required style="background: transparent;" />
                      </div>
                    </div>
                    <div class="form-group" style="border:none;">
                      <label for="cname" class="control-label col-lg-2" style="color: white;"><b>Quantity</b></label>
                      <div class="col-lg-10">
                        <input class="form-control" id="cname" value=<%=prod.getQty() %> name="qty" minlength="5" type="number" required style="background: transparent;" />
                      </div>
                    </div>
                    <div class="form-group" style="border:none;">
                      <label for="cname" class="control-label col-lg-2" style="color: white;"><b>Price</b></label>
                      <div class="col-lg-10">
                        <input class="form-control" id="cname" value=<%=prod.getPrice() %> name="price" minlength="5" type="number" required style="background: transparent;" />
                      </div>
                    </div>
                      
                    <div class="form-group" style="border:none;">
                     <% CategoryDao cdao = new CategoryDaoimpl();
						List<Category> categoryList = cdao.getAllCategory(); %>
                     <label for="cname" class="control-label col-lg-2" style="color: white;"><b>Category</b></label>
                     <div class="col-lg-10">
                       <select id="inputState" class="form-control" name="category" value=<%=prod.getCatId() %> style="background: transparent;">
                       <% for(Category cat:categoryList){
	  						 out.print("<option value='"+cat.getCatId()+"'>"+cat.getCatName()+"</option>");
  													 } %>
                       </select>
                     </div>
                    </div>
                     <div class="form-group" style="border:none;">
                      <label for="cname" class="control-label col-lg-2" style="color: white;"><b>Image</b></label>
                      <div class="col-lg-10">
                        <input class="form-control" id="images" value=<%=prod.getImg() %> name="image" minlength="5" type="file" required style="background: transparent;" />
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="col-lg-offset-2 col-lg-10">
                        <button class="btn btn-primary" type="submit">Save</button>
                        <button class="btn btn-default" type="button">Cancel</button>
                      </div>
                    </div>
                  </form>


</div>
</div>
</section>
</div>
</div>
</div>
    

</div></div></div>
</div>


-----------




        <!-- page end-->
      </section>
    </section>
    <!--main content end-->
    <div class="text-right">
      <div class="credits">
          <!--
            All the links in the footer should remain intact.
            You can delete the links only if you purchased the pro version.
            Licensing information: https://bootstrapmade.com/license/
            Purchase the pro version form: https://bootstrapmade.com/buy/?theme=NiceAdmin
          -->
          Designed by <a href="index.jsp">Wood Craft</a>
        </div>
    </div>
  </section>
  <!-- container section end -->

  <!-- javascripts -->
  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <!-- nice scroll -->
  <script src="js/jquery.scrollTo.min.js"></script>
  <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
  <!-- jquery knob -->
  <script src="assets/jquery-knob/js/jquery.knob.js"></script>
  <!--custome script for all page-->
  <script src="js/scripts.js"></script>

  <script>
    //knob
    $(".knob").knob();
  </script>

</body>

</html>
