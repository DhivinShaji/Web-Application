<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>New Transaction</title>
</head>
			<body>
			<table id='tab'>
			<form action='inputtrans.jsp' method='post'>
			<tr>
			<td id='text'>
			RECEIVER NAME:
			</td>
			<td>
			<input type='text' name='rec' id='pwd1' width='100px' size='50'></input>
			</td>
			</tr>
			<tr>
			<td id='text'>
			SOURCE:
			</td>
			<td>
			<select name='source' >
			    <option value='DEFAULT' >
			    ------------CHOOSE STATE---------------
			    </option>
			    <option value='KARNATAKA'>
			    KARNATAKA
			    </option>
			    <option value='KERALA'>
			    KERALA
			    </option>
			    <option value='TAMIL NADU'>
			    TAMIL NADU
			    </option>
			  </select>
			</td>
			</tr>

<tr>
<td id='text'>
DESTINATION:
</td>
<td>
<select name='dest'>
<option value='DEFAULT'>
------------CHOOSE STATE---------------
</option>
<option value='KARNATAKA'>
KARNATAKA
</option>
<option value='KERALA'>
KERALA
</option>
<option value='TAMIL NADU'>
TAMIL NADU
</option>
</td>
</tr>

<tr>

<td id='log'>
<input type='submit' value='SEND'></input>
</td>
</tr>

</form>
</table>
</body>
</html>