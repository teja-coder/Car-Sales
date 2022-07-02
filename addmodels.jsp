<!doctype html>
<html>
	<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<style>
 body {
font-family: "System", Times, serif;
color: #777;
background-image:url("bg..png");

background-size:cover;
}
 h5{
margin: 0 0 0 20px;
letter-spacing: 1px;      
font-size: 20px;
color: #111;
bgcolor:"#F08080";
}
.container {
padding: 80px 120px;
}
.person {
border: 10px solid transparent;
margin-bottom: 25px;
opacity: 0.7;
}
.person:hover {
border-color: #f1f1f1;
}
.text-center{
color: #ff0000 !important;
}
.carousel-inner img {
width: 100%; /* Set width to 100% */
margin: auto;
}
.carousel-caption h3 {
color: #ff0000 !important;
}
@media (max-width: 600px) {
.carousel-caption {
display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
}
}
  .btn {
      padding: 3px 5px;
       transition: .2s;
	font-size: 15px !important;
  }
  .btn:hover, .btn:focus {
      border: 1px solid #111;
      background-color: black;
      color: white;
  }
.w3-container{
 color: white;
  }	
 
  	.navbar {
     font-family: "System", Times, serif;
      margin-bottom: 0;
   
      border: 0;
      font-size: 15px !important;
      letter-spacing: 1px;
      opacity: 0.9;
  	}
 	 .navbar li a, .navbar .navbar-brand { 
      color: #fff !important;
 	 }
  	.navbar-nav li a:hover {
      color: #000 !important;
 	 }
  	.navbar-nav li.active a {
      color: #000 !important;
    
 	 }
  .navbar-default .navbar-toggle {
      border-color: transparent;
  }
.nav-item-dropdown{
color:#000;
}
  footer {
          background-color: #e82929 ;
 border-color: transparent;
padding:2px;
  }
  footer a {
      color:black;
  }
  footer a:hover {
      color:white;
      text-decoration: none;
  }  
  .form-control {
      border-radius: 2;
  }
#navdrop , .dropdown-menu{
 background-color: #e82929;
}
  </style>
    <%
if(request.getParameter("m1")!=null){%>
    
<script>alert('Login Sucess!')</script>

<%}
if(request.getParameter("m2")!=null){%>

<script>alert('Added Success..!')</script>
 <%
}
%> 
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

<nav class="navbar navbar-expand-lg navbar-dark "  style="background-color:#000000;" >
	 	<a class="navbar-brand" #>
    		<img src="logo.png" height="15%" width="10%"  alt="">&nbspCARSTORE.com
		</a>
  		<a href="#" class="btn btn-danger btn-lg active" role="button" data-toggle="popover" title="Login/Signup" data-content="Login/Signup" aria-pressed="true">Admin</a>&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="logout.jsp" class="btn btn-danger btn-lg active" role="button" data-toggle="popover" title="Login/Signup" data-content="Login/Signup" aria-pressed="true">Logout</a>
			
</nav>

<nav class="navbar navbar-expand-lg navbar-light sticky-top "  style="background-color:#e82929;" >
  		<div class="collapse navbar-collapse " id="navbarSupportedContent">
	   		
 		<ul class="navbar-nav ml-auto">
  	    	<li class="nav-item active ">
		 <a class="nav-link " href="adminhome.jsp"><b>Home</b> 
		<span class="sr-only">(current)</span></a>
     	 	</li>
	 	
   <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Models
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class=" dropdown-item" id="navdrop" href="addmodels.jsp">Add Models</a>
          <a class="dropdown-item"  id="navdrop" href="viewmodels.jsp">View Models</a>
          <a class="dropdown-item"  id="navdrop" href="adddiscounts.jsp">Add Discounts</a>
        </div>
      </li>
       	

   <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         View Orders
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class=" dropdown-item" id="navdrop" href="aviewbookings.jsp">View Bookings</a>
          <a class="dropdown-item"  id="navdrop" href="aviewappointments.jsp">Appointments</a>
	<a class="dropdown-item" id="navdrop" href="aviewfeedback.jsp">View Feedback</a>
           <a class="dropdown-item" id="navdrop" href="aviewpayments.jsp">View Payments</a>
        </div>
      </li>
      

   	
	</ul>
	 </div>
</nav>

<!-- Container (Indicator) -->
<div style="background-color:white">
    <style>
        
        tr{
            
            color: black;
        }
        
        
    </style>
    
    
    
    <br><Br><center>
    <h2 style="color:black">Add Models Here</h2>
    <table>
    <form action="addmodelsact.jsp" method="post">
        <tr><th>Brand</th><th><select  name="brands" required="" style="width:198px">
            <option value="" style="color: black">Select Brand</option>
            <option value="Maruthi Suzuki" style="color: black">Maruthi Suzuki</option>
              <option value="volkswagen" style="color: black">volkswagen</option>
              <option value="Mahindra" style="color: black">Mahindra</option>
                <option value="AUDI" style="color: black">AUDI</option>
                 <option value="BMW" style="color: black">BMW</option>
                  <option value="BMW" style="color: black">Volvo</option>
                   <option value="BMW" style="color: black">TATA</option>
           
            
        </select></th></tr>
        
           <tr>
               <th>Model</th>      <th> <input type="text" placeholder="Model" name="model" required="" autocomplete="off"></th></tr><tr><th></th></tr><tr><th></th></tr><tr><th></th></tr>
        
          <tr><th>Brand</th><th><select  name="status" required="" style="width:198px">
            <option value="" style="color: black">Select Status</option>
            <option value="New" style="color: black">New</option>
              <option value="Up Coming" style="color: black">Up Coming</option>
              
           
            
        </select></th></tr> 
           
           <tr>
            <th>Price</th>  <th><input type="text" placeholder="Price" name="price" required="" autocomplete="off"></th></tr><tr><th></th></tr><tr><th></th></tr><tr><th></th></tr>
        <tr>
            <th>Mileage</th><th> <input type="text" placeholder="Mileage" name="mileage" required="" autocomplete="off"> </th></tr><tr><th></th></tr><tr><th></th></tr><tr><th></th></tr>
        <tr>
            <th>Cubic Capacity</th><th><input type="text" placeholder="Cubic Capacity" name="cc" required="" autocomplete="off">  </th></tr><tr><th></th></tr><tr><th></th></tr><tr><th></th></tr>
        <tr>
            <th>Seating</th><th> <input type="text" placeholder="Seating Capacity" name="seating" required="" autocomplete="off">  </th></tr><tr><th></th></tr><tr><th></th></tr><tr><th></th></tr>
       
        <tr>
            <th>Image </th><th><input type="file" placeholder="Seating Capacity" name="image" required="" autocomplete="off">  </th></tr><tr><th></th></tr><tr><th></th></tr><tr><th></th></tr>
      
        <tr><th></th></tr><tr><th></th></tr><tr><th></th></tr>


        <tr>
            <th> </th><th><input type="submit" value="Add"> </th></tr>
      
</form>
    </table>
     
    <Br><br><Br><Br>
    
    
    
    

</div>
<br><br><Br>
<div class="card-group">
  <div class="card">
        <div class="card-body">
      <h5 class="card-title">Overview</h5>
      <h5 class="card-text"><small class="text-muted">About us</small></h5>
      <h5 class="card-text"><small class="text-muted">FAQs</small></h5>
    </div>
  </div>
  <div class="card">
        <div class="card-body">
      <h5 class="card-title">Connect</h5>
     <h5 class="card-text"><small class="text-muted">call : 1800 000 000(toll-free)</small></h5>
      <h5 class="card-text"><small class="text-muted">email : mailus@mail.com</small></h5>
    </div>
  </div>
  <div class="card">
        <div class="card-body">
      <h5 class="card-title">Experience on</h5>
      	&nbsp&nbsp&nbsp&nbsp&nbsp
	<button type="button" class="btn btn-dark btn-lg">&nbspDownload on <img src="icons8-google-play-30.svg"></button></br>
	</br>&nbsp&nbsp&nbsp&nbsp&nbsp
	<button type="button" class="btn btn-dark btn-lg">&nbspDownload on <img src="icons8-apple-app-store.svg"></button>
    </div>
  </div>
</div>

<footer class="text-center">
  <a href="#top"><img src="baseline-keyboard_arrow_up-24px.svg">
  <h6>&nbsp go to top<h6> 
</a>
</footer>

<script language=JavaScript>
$(function () {
  $('[data-toggle="popover"]').popover()
})
</script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	</body>
</html>
