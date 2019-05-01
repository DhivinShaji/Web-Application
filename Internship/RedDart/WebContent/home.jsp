<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Login Portal</title>
  </head>
  <script>$('.carousel').carousel({
	  interval: 50
  }))</script>
  
  <script>
function myFunction() {
    var x = document.getElementById("myInput");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
}



</script>
  
  
  <style>
 body{
 background-color:#203047;
 
 }
  #i{
 background-size:100%;
 border-radius:100%;
 height:6%;
 width:6%;
 padding:2px;
  }
  
 .pull-right {
   position:relative;
   left:345px;
   
}

.imgs{
height:560px;
width:500px;
}
#rd{
position:relative;
font-weight:bold;
top:-9px;
font-size:30px;
font-family:georgia;
color:
#f90202
;
}


 body {
		font-family: 'Varela Round', sans-serif;
	}
	.modal-login {		
		color: #636363;
		width: 350px;
	}
	.modal-login .modal-content {
		padding: 20px;
		border-radius: 5px;
		border: none;
	}
	.modal-login .modal-header {
		border-bottom: none;   
        position: relative;
        justify-content: center;
	}
	.modal-login h4 {
		text-align: center;
		font-size: 26px;
		margin: 30px 0 -15px;
	}
	.modal-login .form-control:focus {
		border-color: #3b83db;;
	}
	.modal-login .form-control, .modal-login .btn {
		min-height: 40px;
		border-radius: 3px; 
	}
	.modal-login .close {
        position: absolute;
		top: -5px;
		right: -5px;
	}	
	.modal-login .modal-footer {
		background: #ecf0f1;
		border-color: #dee4e7;
		text-align: center;
        justify-content: center;
		margin: 0 -20px -20px;
		border-radius: 5px;
		font-size: 13px;
	}
	.modal-login .modal-footer a {
		color: #999;
	}		
	.modal-login .avatar {
		position: absolute;
		margin: 0 auto;
		left: 0;
		right: 0;
		top: -70px;
		width: 95px;
		height: 95px;
		border-radius: 100%;
		z-index: 9;
		background: #190933;
		padding: 5px;
		box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.1);
	}
	.modal-login .avatar img {
		width: 100%;
	}
	.modal-login.modal-dialog {
		margin-top: 80px;
	}
    .modal-login .btn {
        color: #fff;
        border-radius: 4px;
		background: #190933;
		text-decoration: none;
		transition: all 0.4s;
        line-height: normal;
        border: none;
    }
	.modal-login .btn:hover, .modal-login .btn:focus {
		background: #3b83db;
		outline: none;
	}
	














  </style>
  <body>
    

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  	
  	<nav class="navbar navbar-expand-lg navbar-light " style="background-color: #203047;">
  <div class="row">
  <img class="navbar-brand" src="C:\Users\JI40005447\Desktop\img1.jpg" alt="logo" id="i">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
    <li class="nav-item active">
        <a class="nav-link  " href="#"  ><div id='rd'>Red-Dart</div></strong><span class="sr-only">(current)</span></a>
      </li>
  
      <li class="nav-item active">
        <a class="nav-link text-light " href="about-us.jsp" >About us<span class="sr-only">(current)</span></a>
      </li>
  
             <li class="nav-item dropdown" >
        <a class="nav-link dropdown-toggle text-light " href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"  aria-expanded="false" >
          Services
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="background-color: #203047;">
          <a class="dropdown-item text-light" href="#">Send Packages</a>
          <a class="dropdown-item text-light" href="#">Recieve Packages</a>
          <a class="dropdown-item text-light" href="#">Track Packages</a>
          
        </div>
            <li class="nav-item">
        <a class="nav-link text-light " href="#">FAQs</a>
      </li>
         <li class="nav-item">
        <a class="nav-link text-light " href="#myModal" data-toggle="modal" >Login</a>
      </li>
      
       <!-- Modal HTML -->
<div id="myModal" class="modal fade">
	<div class="modal-dialog modal-login">
		<div class="modal-content">
			<div class="modal-header">
				<div class="avatar">
					<img src="C:\Users\JI40005447\Desktop\user.png" alt="Avatar">
				</div>				
				<h4 class="modal-title">Member Login</h4>	
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			</div>
			<div class="modal-body">
				<form action="LoginController" method="post">
					<div class="form-group">
						<input type="text" class="form-control" name="username" placeholder="Username" maxlength='6' required="required">		
					</div>
					<div class="form-group">
						<input type="password" class="form-control" id="myInput" name="password" placeholder="Password" maxlength='6' required="required">	
					</div>   
					<div class="form-group">
					<input type="checkbox" onclick="myFunction()" > Show Password</input>
					</div>     
					<div class="form-group">
						<input type="submit" class="btn btn-primary btn-lg btn-block login-btn" value="Login" ></input>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<a href="#">Forgot Password?</a>
			</div>
		</div>
	</div>
</div>     
  
      
      
      
      
      
      
      
      
      
      
       <li class="nav-item">
        <a class="nav-link text-light " href="sign-up.jsp">Sign-up</a>
      </li>
      </li>
     
    </ul>
    <div class="pull-right">
  <form class="form-inline ">
    <input class="form-control mr-sm-2 "  type="search" placeholder="Search" aria-label="Search">
    <button class="btn btn-outline-danger my-2 my-sm-0 text-light" type="submit">Search</button>
  </form>
  
  </div>
  </div></div>
</nav>


  
  <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner ">
    <div class="carousel-item active " >
      <img class="d-block w-100 imgs" src="C:\Users\JI40005447\Desktop\img11.jpg" alt="First slide" >
    </div>
    <div class="carousel-item ">
      <img class="d-block w-100 imgs" src="C:\Users\JI40005447\Desktop\img12.jpg" alt="Second slide">
    </div>
    <div class="carousel-item ">
      <img class="d-block w-100 imgs"  src="C:\Users\JI40005447\Desktop\img13.jpg" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
  
  
  
  
  
  </body>
</html>