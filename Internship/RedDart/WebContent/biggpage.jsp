<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />

<title>BIGGG</title>
</head>
<body>
<style>
body{
						background-image:url('https://images.freecreatives.com/wp-content/uploads/2016/02/Amazing-Dark-Blue-Background.jpg');
						background-size:100%; background-repeat:no-repeat; background-height:100%;}
						#but{
						border: 2px double white;
						margin:30px;
						border-radius:100%; transition: transform .2s; 
						height:75px;width:75px;
						}
						
						#text{
						position:relative;
						bottom:120px;
						float:right;
						margin-right:50px;
					
						
						color:#f7f2fc;font-family:'Courier';
						}
						#but:hover {transform: scale(1.5);}
						.but1{
						background-image:url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAABfVBMVEUiqFv////gfwuOSAkmHRd/Pgnz+v+RSQgAokwjHBcdGhgZplcgGxcAoUr0//8Ao08Aql6RRADmfQDgfADgeAAirl7e8OV4Pg35/fvpfAAmGhaTQQDfdQAZGRjx+fQrn1WBOgCCyJxnvYhyPA5YMRJBJxTT69yx28DD5M+FRAo7r2omChCV0Kug1LMmAA1gNBFULxI7JRVfu4IzIhZ1JQB4LgC84MlSiEI1IhVqv46loafU5+NhnkpsOQ8jhUnv4tXqwqEmKh3km1hMkkmikDOGOQBMtXXh2cHWpmk1rmeITxNrbzFZdzjatYQcDRPQxsDijTTUghLQiyirjS7jy6p5mkNFo1KHlj63iyjcqnLPhhzWqGunhXLSlELo6euJUSqVkziziyq6o5fduo/QnVR/mEKTY0bYkj/f28Try7Hmpmy4ol7otYnGtq3XxJ1zXCJraS14XCFGiEUdaj1TbjV/VBklTy8je0QjkVCztrZyWCacc1slOSQmJxslOCMZxV1QAAARiElEQVR4nM2d+UMTRxvHJ8nCJptjQy4CJIEIAcJNEBAVsYooKK0goNBKrdJarbdF7fX+7e/M7G6yu9lz5lmS7y8tEMJ8fJ55rp3solDQKlYKkxOzM9W1ra2p7W2E0Pb21NbWWnVmdmKyUCkG/vdRkG9eWKk2ppAclWU5joVaIl/i70ZlNNWYWSkEuYigCDHcVjQqG7msRFCjyanqRFCYQRAWZhtxAufCZuSUo6gxGwQlNGFxsoqSsh84HaacRNVJ6J0JSliZaMiMdC1KuTFRgVwUHGFxohHlxNMgo40VOEtCEY6v8VrPCCmvjQOtDIZwYioKh6dCRqcmQNYGQFiownhnG6McrQIEV27C8Qa4+XSQ0QY3Iyfh+FYyOD7KmGxwbkguwvGtAO3XZIxucTFyEBYaAduvyZjk8VVmwkr1AuzXZIxWmasAVsLZQMKnA6M8e6GE49vyhfIRyYhtO7IQFqsXtAFNSq6x1HIMhCsX7KAtxeOTF0BYvBTtEB9R9JJvM/olnPTV2MLLvxl9ElaTHeUjilYDJKxMXXwIbZe85Ss3+iHsXIgxyp+n+iCc6byHakrOBEBYbHSDh2qSG55jqlfCynZ3eKim+LbXzeiRcJx3C+ax0mhYEUqTLzkRZY9FnDfCSZ4sj2GGPz24//F8J9I3RNQX2Tn/eP/Bp2E+zKi3eOOJcII9xmC61fcRTNUnimJEE/7/Pkxb/7A6zAGZ9DSq8kI4ywyYRw/OMVzETpjyfBUxMya9dFQeCJmzRH74w1CfaIunmrNv6MMwK6OXrOFOOMO4BymfC55mSWbGqDuiKyGrBdMPHLyznfFBYIhuhIwWzA+fD3nmIxo6ZzSjK6IL4Swj4G3X/ddmxsg3NkS3cONMyJgm8qv+DEglDn1iRHROGo6EkxcIiMWM6Jj6nQjHGV30ExsgO6LsNDB2IKywNRP5b6yAGHGY6U+iuEMZbk9YZO0mIn6DTEviDiPhFAthgw0w/9F7GmxX33tGP234J5xh9FHGKKOJeSvapkU7QsYwihCPBakY/65tQLUhZIwyKP+Bl7DvT8b6TbaJNjaEU4xRZpjPR4mY46lNtLEmZNyEACbERrzPasSqd0LmTQhgQozI+MdttqIVYZF16pS/z29CTMjaSaG41YjRivAS81wNAhCn/TQr4SVvhCvMgzXOXKhp6DbrAqIrXgiZfRTl37PXa3r1fWCeTcntftpOuMY++4UxIfZT5hXE19wJx9lHh0BOyuOmKNk2CW8jROxOCpAMFTGnRHI9w41wluMKUx0IEEdT9kF427kbEyFrPUrE0fmaxVq5UcSKI2GVPczkV6GclPRQ7ITxqhNhgeMyL9w25NqIOCkWHAgZ+3qFcAcmGxKJHzkI4w17QvZMQQS3DSOROzwXFo0Zw0DIY0LIQMMXalB8y46QcT6qCDLQcOV8rOi4DeEWjwnzDyAJ2TsoIoMRdYR8uxCq7FYJeYKpcSfqCNnbQkp4DkkoMs5NVekbxRZhgfNU5Q4gYEQ85zuMosuJLUKOcoZoGHIbcvT5inSFTZOwyHlqDWQI1VIfT7rAihbbCHmaCiLQdMiZELHkiTZC3nNrzBcNgyFszYc1Qq5sjyAbfJWQK+UjXdbXCDmmMyohaKTh6p+omhMblbDIe3gUtqQBIGyO3VTCla4jXOU8ndmMNSohV1dBCUEG+pCEWpuoEFa4PyUCTdjHTYiiFR3hBPcZbnBCruaCSnVTBOOkKP9nRAScYogjrJeCW1LdlBLyzBA1ws/fx2pQiGJN+v4zN6EaTSnhJAThYEwAIxRigxCEk01CzraC5PudoVoCkrA2tMMfTatNQs53wmFmSBTnEzEgwEgklhgTxSG+Pp9II+SZA1PdxjWpuC4loADrCWldBKhNkwWVkLdxotNusb8sQV2aqUtSv8h1pVQRvUpDCPkGNNq0u14u9wAR9pTL9B+L4xIUFR3XIIBtqBxQEGPSKEyoEUclib4T87mTphRC3hGUOqIRF+nmgSBcl64ohJxtMB1IIYCSTSVckMaACBekGgwhKdwQQDZUCecloKIGlzRjMIQkIyLOYT6VQjgqLQERCqq/c+9DMt7HhNydU1pZGI6AIIAkKvdTQpFvaIoVJYTcgUYb6OM83Q9hROwMCZoseA4saIQFTMg9wED594qbCtI8COG8WuGyHvrWSV7BhKxnSXWESvcr1hIgoUZcTCwqhPe5vVSewYS8FQ3STuyJC0C1dyKxoBDyTzJwVYOYDzzrpEz0sXdBbESxX0oo3s5dedPRNypyvwvS0gVeGkDOx66gln9DEEsrIv4xWyuYlgWAjCgKglLCA4RSMnBD/MmiNWiTBP72AndhgpJXuZsnSlhAADOaZqhZivG7KXZSQUkW/ENhRGY1iH9UirTLo2ItJgicgJFITFCHdrwX2KjkFcTb4FOl6UYUxxICb4+IOydBSRa8F7oVybOIu7MgUq7LkNXFFjkJl2KCkiwApt6IdBcwhEoDhdMFjoNcKVEcLQuqH4A4KSEEKGmQFk3rmJDPiOIVvJXpRAskkpKiBvF3h4rqZN6Gl8dlROLngkCmkn2sn9IzKd5AWzDvhIZ3hoaGiAVitllfbMnuFQLREn6nHRAfxdpCU0DvhNK3V29/GcQLtOyhMFR9dH1+fmxsbH59tL9ueaWKBGNBGPyM3wkijlJNoW2ot0LkY9xzxAYJ82RYFOvzNaEsSQkqSSpLQm2+boYUe8rk1+eYb3ViJUg+rPy/xIjmYCP2L5YTMcGoWKK8aNqxJFNgE36BBATXjWmyetNYsVaOKUzEemVsSknhjZVrBkBSrwnC9I2uJsz/R4wolPWVzVKC0sRqY3gD9vT09OP9WItR6sSSDnCd+ujgd10NiNBXakSh1QpT14uVF/ojWhBV/tu/IOEfJK40XzdKAYXpr51GcNN3gwpij7J0cZ5UAUs9baETR58riVbgJU2TYkLwFQHHGnRjTokkCdWKxEOvWN5IQoyQ9Kl0SuKopPza3A3g9WyDE+b/pxhR2YvUNFLdcB+z1v/XtTpW3YPYhP9C78IpsJqmqW/Taj4oL4jk2regP6OBE4cuRZCGEjcSIo626u9Mf4NezhbiP0pjUv6LhpjA2w9XKYlWjYNNGtPVrfSnY2K/kNAAAU5gGIXrUpjewiBhUMvq5bGFmIFwMaavB6iFFxbKWjUw+B/4WnBvAdMf6qXWbooZSUZo5X/iljqnpXVorFXtzDHeDMtBuD+cgbdh/vO0oBNG0sILCZnNOQf+bs1Qy8H7KCacgZnTmKSUpy1EYWG0rnZNeOOpXVR9dCFmAISPo4jOaUBmbW0SDIhCQiov1WjXtBhbrNOybaksGYvxQSGIhcgTMPNSs/LfDH5KDRnDdbeEqWISLb3NvcbgNGjTpEmeBJl5tyt/Y86M6KIAogxRtABy3cJC+a/+EOcC6pmiFZhrTxbyhxgUILn2BHH90FL5G9OD7mhUg4F1veT6IcQ1YGvlvw16QxwUgtmDSL0GzH8d31bD37WFVAtN/y+QKEpFr+Pzn8Vw0Bd3xLkgJ0/0LEYw6UJV/uugOfEZFRsMdPBEz9Pwn4lyUv5+TbJnjEkL/EednRQFOtfmoPzqnfUlG8aYdGX0DsSFXlup59rg+ye9hu/01C0ZMd96vecO1PUJS6lnE4OpvZu604O1XpMMU+9YIlFbJz+4E+jfVs+XBhpqUL6Hqt4/fyVBCu4YKcETi/M9dfr9/mC3YQHonLeT8n/3NLU+v1Cr1RbmR5vfGfk72Ak30Fl9R+U/jPTYawTmSq+Nmmf1g2jzm8rfdyQMNFk0P28RbM53JuT/EJ6Dmp+ZCXQjdpKw+bkn7o+qO6mDXqp8YB3q84e26mCkkVcgP0Nqrbgc3/7bARBni+14YE8CU+5NB/U5YEvFt69dveoEiHX16rWAHiWl/xxwQIWbvNXb2/vXZUfAy3/h12wF8+f1n+UOZOAWXcOL7y2+vWy/EUcuvy2SF60FgWj4PH4QbpqcCZHF96ZOe+wQR/pPU/Q1QTy1znhPhQBGGclZBRAj9v6zbAm4/E9vSn0NxzOl7CSvwN7bpO39JzVA4qnPLTx15PLzYusl8BnLdG8T0KSfxrqmA8SIPyybEUdGfijqXxK6Rn4NbhHm+9Nw32NIFVnk0a+b+8epXoNSvb8ZPXX5t17zS46fPDs8QlCUbfcY4r5PFKU7Otw8CQ9kstncrV6TUs/1aePy85T5Bbdy2UxmILy/eYgAjNl+nyjeFgrTPX5C4cJU2YdFE4POU0eWjR6K+YsPtV/EmHuPDoc5IS3u9cVxvzb8T359cy+TUdeorjR8anbD058VT13+uf1HYeMvZzInz454IC3u18Y8ckujw1/CA4YFKqvMbrRtxp+Ip17+KWX+wUa27fezxJTXWSGt7rnH1gdj6/2SzbTj0TWWXpk3W/Ht8sjyW5OH9qZelWzeYSC8yWZJy/smMoxr0ujxnoX1mirdNCKmUsXT306LJhOmbpbs3yI7sH/on9H63pe+71+aPtrMZOzXRhHfpJpwqd7TjZuvH4Yfvr65cUq/Vn/yxgGQMGbCz5BPxmTBktDfeD89/MiNjyC+ThFVNm4ev8yWcjm833AqyZXCL9/c3KjQn712BiTKZDd9Mdrdg9ZP1k+jTSf3bCl369XxLZXNYJlsrlTK3nrz6lbOy9tkss98INreR9h7h5E+DLvbT0Uxs5k4Pf07Eca9614Z7e8F7X0nPhnwuC5AZQc2PSI63M/bmxHTR3teDQirzImn3eh0T3ZP91NKH9rkv+CVDXvxVMf76nsobNKHHfDQpjLuiM7PRnCfK6avdxIQm/HIjdDl+RauLcZwpzxUI9xzA3R5Rolbn5h+0mHCcMY5oro/Z8YlY3TYR4kGHP3Uw7OCHCc2nTch9tNHDkb08rwn52d2dR4Qy2F9np7Z5fTctS5wUuym123X5+25aw6NYvpZZ4oZozK2RbjXZ+fZ+2l6vxu8NPvEltDr8w9DkzZ+mu4GE2JEG0Lvz7C0fQ7pUTdsQ9t84ec5pDbPksU1d6fhqDKHVkb09yxZ6/o0vdkN29CurPH5PGDLx8l2R6CxCTV+n+lsvRX3Os2maq+d0P9zua36/S4JNNhN2w6lsjxbPVRs6zKud0egsahq7KKMM2FbtEk/7hbCzGOTm8ZtoowLoXl+mn7UHYEGhxpTMJULDhROhKaAmj7pGsJ9A6FtGHUnDE3oEdPdAoilJ0xOODI4E4ZmdY561C3bEG9EXRCMmgcz/ghDMy3ErgmlZKjYArRNhB4JW6eVuieUYsJf014B3QmbVuyWqpSoWZlGq67rdyfUrNgtVSmRVpkmXS3oiVA9c5bulqoUK3tCCZMuQcYzoZo0umcbhpV5mydAb4R0rNE1dTcRafOjjoneJ2FoXI53SYOvKHM97liq+ScMVba7YpKoKfN426HYZiIMpf5wPzNxcSr9kfK6cM+EodALm5NLHVDphfdl+yAM3Q13B2I2fNfHqv0Qhir7ng6/BKzcS69b0D9hKLTbcU/Nlnb9LdknYej3Dntqbu93nyv2Sxiq3OugGbOle1YXX2AJScDp1G7M+Qox7IShYmfMyGJARkK8G08u3oy5E787kIcwFHp3wa6aC79jMSAHYajy4wW6Kk4RvnIgCGEoVDi7IMZs6cxjHwFMiLfj0wtgzJaesm1ACMILYMR8G3xL5CQMhTbOSsHFnFzujJMPgBDvx92c59PafpTN5XY59h8gIS4BDk7AnTVb2j9gzA9GgRBibdyDNGQ2l/2R2z1VQRHiBHnwFAYSe+fZAXP6axMcYYhAvuSFxHhPAfFCwIRYlbvHeyVGymyutHd8FxQvBE9ItPHujFD6wSQfhto7ewe19/QKghArtXGw+zLX/nEna7ZSeH/3YMPzfNCfAiJUtHHw4uxhuIRBMWlWB0u/wt/FxcLDsxcHGyBpwUaBElIVixt3D17sHt97un+yR65f7e2d7D+9d7z74uDuRhF617Xr/zhUZRzukQTZAAAAAElFTkSuQmCC');

						
						background-size:100%;}
						.but2{ background-image:url('data:image/png;base64,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');background-size:100%;}
						.but3{background-image:url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRED5zdiReZWHg2O42t8Vu1Ayr_20PoRLUD0uER2taBR7Qp5yQo');background-size:100%;}
						.but4{background-image:url('https://cdn0.iconfinder.com/data/icons/eco/500/Deliver_delivery_ecommerce_moving_online_shipping_truck_green-512.png');background-size:100%;}

						#dis{ position:absolute;left:500px;top:2px; margin-top:40px; color:#f7f2fc;font-family:'Courier';}

						#dis2{ position:absolute;left:500px;top:2px; margin-top:200px; color:#f7f2fc;font-family:'Courier';}
						#dis3{ position:absolute;left:500px;top:2px; margin-top:340px; color:#f7f2fc;font-family:'Courier';}
						#dis4{ position:absolute;left:500px;top:2px; margin-top:490px; color:#f7f2fc;font-family:'Courier';}

						
						
</style>
<form action='userprofile.jsp' method='post'>
<input type='submit' value='' id='but' class='but1'>
</form>
<div  id='text'><h1> Profile </h1></div> 

<%
try{
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/task","root","root");  

 //String enc=Bcrypt.hashpw(pwd,Bcrypt.gensalt());

 //String mail=request.getParameter("mail");
Statement stmt=con.createStatement();  
ResultSet rs;
HttpSession sess = request.getSession(false);




 
String u=(String)sess.getAttribute("username");
rs= stmt.executeQuery("Select * from users where username = '"+u+"';");

while(rs.next())
{
	if(rs.getString(8).equals("1"))
	{
		out.println("<form action='suroles.jsp' method='post'>");
		out.println("<input type='submit' value='' id='but' class='but2'>");
		out.println("</form>");
		out.println("<div  id='text'><h1>Role Assignments</h1></div> ");
	}
	if(rs.getString(5).equals("1"))
	{
		out.println("<form action='approvals.jsp' method='post'>");
		out.println("<input type='submit' value='' id='but' class='but2'>");
		out.println("</form>");
		out.println("<div  id='text'><h1>Approvals</h1></div> ");
	}
	if(rs.getString(6).equals("1"))
	{
		out.println("<form action='tman.jsp' method='post'>");
		out.println("<input type='submit' value='' id='but' class='but2'>");
		out.println("</form>");
		out.println("<div  id='text'><h1>Manage Transaction</h1></div> ");
	}
	if(rs.getString(7).equals("1"))
	{
		out.println("<form action='utran.jsp' method='post'>");
		out.println("<input type='submit' value='' id='but' class='but2'>");
		out.println("</form>");
		out.println("<div  id='text'><h1>My Transactions</h1></div> ");
	}
	
}

con.close();  
}catch(Exception e){ System.out.println(e);}  
%>
 
<form action='cpass' method='post'>
<input type='submit' value='' id='but' class='but4'>
</form>
<div  id='text' ><h1> Change Password</h1></div> 
<form action='Logout.jsp' method='post'>
<input type='submit' value='' id='but' class='but3'>
</form>
<div  id='text' ><h1> Logout  </h1></div> 
</body>
</html>