<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Login Portal</title>

<script>
function myFunction() {
    var x = document.getElementById("myInput");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
}
$(document).ready(function() {
	alert('ghj');
	function disableBack() { 
		
		window.history.forward(); }
});


</script>

<style>
#hed{
text-align:center;
color:#f7f2fc;
font-family:"Courier";
font-size: 50px;
}
#user{
color:#f7f2fc;
margin-left:100px;

}
#new{
position:relative;left:350px;top:2px;
height:100px;
width:290px;
padding:20px;

}
body{
background-image:url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_qB5YR-ORKvMuOKrOKcgi8uTumPXkjV3Mmid_VzX7GoDguATn");
background-repeat:no-repeat;
height:cover;
 background-size: cover;
 
 
}
#tab{
position:relative;left:300px;top:2px;
height:350px;
width:500px;
border: 5px double #a35394;
border-style: outset;
border-radius:30px; 
 background-repeat:no-repeat;
 background-size: 400px 300px;
 padding:50px;
}

#text{

color:#f7f2fc;}

#log{
position:relative;left:35px;
}

</style>
</head>
<body >
<script>disableBack();</script>
<form action="LoginController" method="post">
<div id="d1">
<table id="tab">
<h1 id="hed">LOGIN PORTAL</h1>
<tr>
<td id="text">
USERNAME:
</td>
<td>
<input type="text" name="username" id="textbox_id" maxlength="6" on ></input>
</td>
</tr>


<tr>
<td id="text">
PASSWORD:
</td>
<td>
<input type="password" name="password" id="myInput" maxlength="6"></input>
</td>
<td id="text">
<input type="checkbox" onclick="myFunction()" >Show Password</input>
</td>
</tr>


<tr>
<td>
</td>
<td id="log">
	<input type="submit"  value="LOGIN">
</input>


</td></tr>
</table>
</div>
</form>



<div id="new">
<h3 id="user" >New user?</h3>



<form action="Register.jsp" method="post"  >
<p align="center">
<input type="submit" value="REGISTER" id="la"></input>
</p>

</form>
</div>



</body>
</html>