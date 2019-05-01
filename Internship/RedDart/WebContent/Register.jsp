<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Registration page</title>
<script type="text/javascript">
function myFunction() {
    var x = document.getElementById("pwd");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password"
    }
}

function check(ob)
{
	
	var str=ob.value.toString();
	var n=str.length;
	
	if(str.charAt(n-1)=='!'||str.charAt(n-1)=='#'||str.charAt(n-1)=='$'||str.charAt(n-1)=='%'||str.charAt(n-1)=='^'||str.charAt(n-1)=='&'||str.charAt(n-1)=='*'||str.charAt(n-1)=='('||ob.value==')'||str.charAt(n-1)=='+'||str.charAt(n-1)=='='||str.charAt(n-1)=='{'||str.charAt(n-1)=='}'||str.charAt(n-1)=='['||str.charAt(n-1)==']'||str.charAt(n-1)==';'||str.charAt(n-1)==':'||str.charAt(n-1)=='\"'||str.charAt(n-1)=='\''||str.charAt(n-1)==','||str.charAt(n-1)=='/'||str.charAt(n-1)=='?'||str.charAt(n-1)=='<'||str.charAt(n-1)=='>'||str.charAt(n-1)=='\\'||str.charAt(n-1)=='|')
		{
		
		ob.value=ob.value.replace(str.charAt(n-1),"");
		}
	}


function check1(ob)
{
	
	var str=ob.value.toString();
	var n=str.length;
	for(var i=0;i<n;i++)
		{
	if(str.charAt(i)=='!'||str.charAt(i)=='#'||str.charAt(i)=='$'||str.charAt(i)=='%'||str.charAt(i)=='^'||str.charAt(i)=='&'||str.charAt(i)=='*'||str.charAt(i)=='('||str.charAt(i)==')'||str.charAt(i)=='+'||str.charAt(i)=='='||str.charAt(i)=='{'||str.charAt(i)=='}'||str.charAt(i)=='['||str.charAt(i)==']'||str.charAt(i)==';'||str.charAt(i)==':'||str.charAt(i)=='\"'||str.charAt(i)=='\''||str.charAt(i)==','||str.charAt(i)=='/'||str.charAt(i)=='?'||str.charAt(i)=='<'||str.charAt(i)=='>'||str.charAt(i)=='\\'||str.charAt(i)=='|')
		{
		alert("WHAT DID YOU JUST ENTER??");
		ob.value=ob.value.replace(str.charAt(i),"");
		}}
	}
function loginIdValidation(event){
	if(((event.keyCode >= 65) && (event.keyCode <= 90) || (event.keyCode >= 97) 
			&& (event.keyCode <= 122) || (event.keyCode >= 48) && (event.keyCode <= 57))
			||(event.keyCode == 64)||(event.keyCode == 46)){
		 return true;
	} 
     else{return false;}
}
$('#emailId').blur(function(){
	var emailId = $("#emailId").val();
	var mail_pattern = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	if (emailId.trim() == '') {
		//$('#createEmailIdError').append("Enter the email ID.");
		alert("Invalid input")
	} else if (mail_pattern.test(emailId.trim()) == false) {
		//$('#createEmailIdError').append("Enter the valid email ID.");
		alert("Invalid input")
	}
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
 background-size:100%;
}
#tab{
position:relative;left:300px;top:2px;
height:350px;
width:500px;
border: 5px double #a35394;
border-style: outset;
border-radius:30px; 
 background-repeat:no-repeat;
 background-size: 100%; 
 padding:50px;
}

#text{

color:#f7f2fc;}

#log{
position:absolute;left:200px;

}

</style>
</head>
<body>

<form action="newuser.jsp" method='post'>
<table id="tab">
<tr>
<td id="text">
USERNAME :
</td>
<td>
<input type="text" name="username" maxlength="6">
</input>
</td>
</tr>

<tr>
<td id="text">
PASSWORD :
</td>
<td>
<input type="password" name="password" maxlength="6" id="pwd" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{2,6}" 
title="Must contain at least one number and one uppercase and lowercase letter required">

</input>
</td>
<td id="text">
<input type="checkbox" onclick="myFunction()">Show Password</input>
</td>
</tr>

<tr>
<td id="text">
E-MAIL :
</td>
<td>
<!-- <input type="email" onchange="check(this)" onkeyup="check(this)" onblur="check1(this)" /> -->

<input name="mail" type="emailId" onkeyup="return check(this)" onblur="return check1(this)"  />

</td>
</tr>

<tr>
<td id="log">
<input type="submit" value="REGISTER">
</input>

</td></tr>
</table>
</form>
</body>
</html>