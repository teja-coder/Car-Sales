<!doctype html>
<html>
	<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<style>

body {
    font-family: "Lato", sans-serif;
}

.sidebar {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
}

.sidebar a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s;
}

.sidebar a:hover {
    color: #f1f1f1;
}

.sidebar .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
}

.openbtn {
    font-size: 20px;
    cursor: pointer;
    background-color: #111;
    color: white;
    padding: 10px 15px;
    border: none;
}

.openbtn:hover {
    background-color: #444;
}

#main {
    transition: margin-left .5s;
    padding: 16px;
}

/* On smaller screens, where height is less than 450px, change the style of the sidenav (less padding and a smaller font size) */
@media screen and (max-height: 450px) {
    .sidebar {padding-top: 15px;}
    .sidebar a {font-size: 18px;}
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

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

<nav class="navbar navbar-expand-lg navbar-dark "  style="background-color:#000000;" >
	 	<a class="navbar-brand" #>
    		<img src="logo.png" height="15%" width="10%"  alt="">&nbspCARSTORE.com
		</a>
    <%
    String user = session.getAttribute("username").toString();
    %>
  		  
			
</nav>
<nav class="navbar navbar-expand-lg navbar-light  "  style="background-color:#e82929;" >
  		<div class="collapse navbar-collapse " id="navbarSupportedContent">
	   	<form class="form-inline my-1 my-1">
		      <input class="form-control  mr-1 " type="search" placeholder="Search" aria-label="Search">
      		   	</br><a href=# ><img src="baseline-search-24px.svg"></a>
    	  	 </form>   	
 		<ul class="navbar-nav ml-auto">
  	    	<li class="nav-item active ">
		 <a class="nav-link " href="userhome.jsp"><b>Home</b> 
		<span class="sr-only">(current)</span></a>
     	 	</li>
	 	
   <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Search
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class=" dropdown-item" id="navdrop" href="#">Models</a>
          <a class="dropdown-item"  id="navdrop" href="#">Price</a>
	<a class="dropdown-item" id="navdrop" href="#">Mileage</a>
        </div>
      </li>
       	

   <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="3.html" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Orders
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class=" dropdown-item" id="navdrop" href="3.html">Track</a>
          <a class="dropdown-item"  id="navdrop" href="3.html">Cancel</a>
	<a class="dropdown-item" id="navdrop" href="3.html">Feedback</a>
        </div>
      </li>
      

   <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="4.html" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         Features
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class=" dropdown-item" id="navdrop" href="emicalc.jsp">EMI</a>
          <a class="dropdown-item"  id="navdrop" href="insurance.jsp">Insurance</a>
	<a class="dropdown-item" id="navdrop" href="discounts.jsp">Discounts</a>
        </div>
      </li>
      	  	
	</ul>
	 </div>
</nav>
<div id="mySidebar" class="sidebar">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()"> x</a>
  <a href="#m1">Model</a>
	<div id="list">
	<a href=#><h5><li>Upcoming</li></h5></a>
	<a href="view.jsp"><h5><li>New</li></h5></a>
      
	</div>
  <a href="#m1">Price</a>
	<div id="list">
	<a href="lowtohigh.jsp?high=high"><h5><li>High to low</li></h5></a>
	<a href="lowtohigh.jsp?low=low"><h5><li>Low to high</li></h5></a>
	</div>
  <a href="#m1">Mileage</a>
	<div id="list">
	<a href="view.jsp?val=10"><h5><li>under 10 kmpl</li></h5></a>
	<a href="view.jsp?val=11"><h5><li>10-15 kmpl</li></h5></a>
	<a href="view.jsp?val=low"><h5><li>15 kmpl & above</li></h5></a>
	</div>
</div>

<div id="main" >
  <button class="openbtn" onclick="openNav()">Search
    </button>
  
</br></br>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>



<%

 Connection con = DbConnection.getconnection();
 
 String q = "select * from models order by price desc";
 Statement st = con.createStatement();
 ResultSet rs = st.executeQuery(q);
 

%>

<div class="card-columns">
    
    <%
    while(rs.next()){
    
    %>
    
    
  <div class="card">
    <img class="card-img-top" src="images/<%=rs.getString("image")%>" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title"><%=rs.getString("model")%></h5>
      <p class="card-text">Rs. <%=rs.getString("price")%> </br><%=rs.getString("mileage")%> kmpl</br><%=rs.getString("cc")%> cc</br><%=rs.getString("seating")%> seater</br></p>
	
      <a href="pyment.jsp?model=<%=rs.getString("model")%>&price=<%=rs.getString("price")%>&mileage=<%=rs.getString("mileage")%>&image=<%=rs.getString("image")%>&brand=<%=rs.getString("brand")%>"><button type="button" class="btn btn-outline-danger">Book a Car</button></a>   
      <a href="uappointment.jsp?model=<%=rs.getString("model")%>&price=<%=rs.getString("price")%>&mileage=<%=rs.getString("mileage")%>&image=<%=rs.getString("image")%>&brand=<%=rs.getString("brand")%>"><button class="btn btn-outline-danger">Book Appointment</button></a>    
    

    </div>
  </div>
  
  
 
  <%
    }
  %>


</div>







<!-- Footer -->
<footer class="text-center">
  <a href="#top">
  <p>go to top</p> 
</a>
</footer>

<script>
function openNav() {
    document.getElementById("mySidebar").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
}

function closeNav() {
    document.getElementById("mySidebar").style.width = "0";
    document.getElementById("main").style.marginLeft= "0";
}
</script>
   <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	  
</body>
</html> 
