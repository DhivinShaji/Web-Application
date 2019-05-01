<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Sign Up</title>
  </head>
   </script>
  
  
  <script>
function myFunction() {
    var x = document.getElementById("pwd");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
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
function validatephone(phone) 
{
    var maintainplus = '';
    var numval = phone.value
    if ( numval.charAt(0)=='+' )
    {
        var maintainplus = '';
    }
    curphonevar = numval.replace(/[\\A-Za-z!"£$%^&\,*+_={};:'@#~,.Š\/<>?|`¬\]\[]/g,'');
    phone.value = maintainplus + curphonevar;
    var maintainplus = '';
    phone.focus;
}
function Validate(txt) {
    txt.value = txt.value.replace(/[^a-zA-Z-'\n\r.]+/g, '');
}





</script>
  
  <style>
  body{
  
  background-color:#203047;
 
  }
  legend {
   color: white;
}

  .form-control {
    width: 95%;
    
}
.text{
color:white;
}
.cent{
margin-left:500px;
width:900px;
height:500px;
}
  </style>
  
  <body>
  
   <div class="cent">

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <div class="container">
	<div class="row">
        <div class="col-md-6">
            <form action="RegisterController" method="post" id="fileForm" role="form">
            <fieldset><legend class="text-center"><span class="req"><strong>Registration </strong></span></legend>

            <div class="form-group">
            <label for="phonenumber" class="text"><span class="req ">* </span> Mobile Number: </label>
                    <input required type="text" name="mobile" id="phone" class="form-control phone" maxlength="10" onkeyup="validatephone(this);" /> 
            </div>

            <div class="form-group"> 	 
                <label for="firstname"class="text"><span class="req text">* </span class="text"> First name: </label>
                    <input class="form-control" type="text" name="firstname" id = "txt" onkeyup = "Validate(this)" required /> 
                        <div id="errFirst"></div>    
            </div>

            <div class="form-group">
                <label for="lastname"class="text"><span class="req text">* </span> Last name: </label> 
                    <input class="form-control" type="text" name="lastname" id = "txt" onkeyup = "Validate(this)"  required />  
                        <div id="errLast"></div>
            </div>

            <div class="form-group"class="text">
                <label for="email" class="text"><span class="req text">* </span> Email Address: </label> 
                    <input class="form-control" required type="text" name="email" id = "emailId"  onkeyup="return check(this)" onblur="return check1(this)" />   
                        <div class="status" id="status"></div>
            </div>

            <div class="form-group" class="text">
                <label for="username" class="text"><span class="req">* </span> User name:  <small>This will be your login user name</small> </label> 
                    <input class="form-control" type="text" name="username" maxlength="6" id="txt" onkeyup = "Validate(this)" placeholder="maximum 6 letters" required />  
                        <div id="errLast"></div>
            </div>

            <div class="form-group" class="text">
                <label for="password" class="text"><span class="req">* </span> Password: </label>
                    <input required name="password" type="password" class="form-control inputpass" minlength="4" maxlength="6"  id="pwd" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{2,6}" 
title="Must contain at least one number and one uppercase and lowercase letter required" /> </p>

                
            </div>
            <div class="form-group text">
					<input type="checkbox"  onclick="myFunction()"  > Show Password</input>
					</div>    
						<div class="form-group">
  			 <input type="checkbox" required name="terms"  onchange="this.setCustomValidity(validity.valueMissing ? 'Please indicate that you accept the Terms and Conditions' : '');" id="field_terms"> <label for="terms" class="text"> I agree with the <a href="terms.php" title="You may read our terms and conditions by clicking on this link">terms and conditions</a> for Registration.</label><span class="req">* </span>
  			</div>
  		
  <div class="form-group"class="text">
                
                
                <input class="btn btn-success" type="submit" name="submit_reg" value="Register"/>
            </div>
   
  
  
  
  
  
  
  
  
  </div>
  
  
  
  </body>
</html>