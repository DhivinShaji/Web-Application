<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>
<%
try{  
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection(  
	"jdbc:mysql://localhost:3306/task","root","root");  
	
	HttpSession sess = request.getSession(false); 
	Statement stmt=con.createStatement();  
	String tids=request.getParameter("check1");
	
	out.println("<html>");
	
	ResultSet rs= stmt.executeQuery("Select * from transactions where TID= '"+tids+"' ;");
	if(!rs.next())
	{
		
		getServletContext().getRequestDispatcher("/invalidtrack.jsp").forward(request, response);
		return;
	}
	else
	{
		
	out.println("<style>body{  background-color:#203047;}  #img1{ background:url('data:image/png;base64,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');background-size:100%;border-radius:100%;height:50px;width:50px; }");
	out.println("#dmg1{background:url('data:image/png;base64,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 ');background-size:100%;border-radius:100%;height:50px;width:50px;}");
	out.println(".alin{ height:150px; width:20px;  position:absolute; top:2px; margin-left:500px;} ");
	out.println("#dis{ position:absolute;left:20px;top:2px; margin-top:10px;font-family:'Courier';}");
	out.println(" #map {height:600px; width:600px; position:absolute; left:500px;}");
	out.println("#tab2 {height:300px;width:200px;position:absolute;left:200px; top:18px;}");
	out.println("#tab1 {height:300px;width:200px;position:absolute;left:10px; top:2px; padding:15px; font-size:18px;color:white; } #ff{margin-top:50px;}");
	out.println("</style>");
	
double slat,slon,dlat,dlon;
	
 	out.println("<body>");

	String s=rs.getString(11);
	String d=rs.getString(12);

	

		
    out.println(" <div id=\"map\"></div>");
    
	//mapp
	
    out.println(" <div id=\"map\"></div>");
    if(s.equals("KARNATAKA") && d.equals("KERALA") || s.equals("KERALA") && d.equals("KARNATAKA")){out.println("<script> ");
    out.println(" function initMap() {var map = new google.maps.Map(document.getElementById('map'), {zoom: 5,center: {lat:18.819722, lng: 77.944600},mapTypeId: 'terrain'});");
	out.println(" var flightPlanCoordinates = [{lat:12.966826, lng:77.537328},{lat:9.918291,lng:76.271671},{lat:11.332486,lng:77.715911},{lat: 8.494436, lng:76.944313}];");
    out.println(" var flightPath = new google.maps.Polyline({path: flightPlanCoordinates,geodesic: true,strokeColor: '#FF0000',strokeOpacity: 1.0,strokeWeight: 2});");

    out.println(" flightPath.setMap(map);}</script>");
    
    out.println("<script async defer src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyCdEaePs760rnaSqSoPUkEbUpvjCRYoOyo&callback=initMap\"></script>");
	}
	
	else if(s.equals("KARNATAKA")&& d.equals("TAMIL NADU") || d.equals("KARNATAKA")&& s.equals("TAMIL NADU")){
		out.println("<script> ");
	
	    out.println(" function initMap() {var map = new google.maps.Map(document.getElementById('map'), {zoom: 5,center: {lat:18.819722, lng: 77.944600},mapTypeId: 'terrain'});");
		out.println(" var flightPlanCoordinates = [{lat:9.982356, lng:78.703544},{lat:12.661798,lng:78.010150},{lat:11.790130,lng: 77.800075},{lat: 12.966826, lng:77.537328}];");
	    out.println(" var flightPath = new google.maps.Polyline({path: flightPlanCoordinates,geodesic: true,strokeColor: '#FF0000',strokeOpacity: 1.0,strokeWeight: 2});");

	    out.println(" flightPath.setMap(map);}</script>");
	    out.println("<script async defer src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyCdEaePs760rnaSqSoPUkEbUpvjCRYoOyo&callback=initMap\"></script>");
		}
		
		else if(s.equals("KERALA")&& d.equals("TAMIL NADU") || d.equals("KERALA")&& s.equals("TAMIL NADU"))
		{out.println("<script> ");
			 out.println(" function initMap() {var map = new google.maps.Map(document.getElementById('map'), {zoom: 5,center: {lat:18.819722, lng: 77.944600},mapTypeId: 'terrain'});");
				out.println(" var flightPlanCoordinates = [{lat:9.982356, lng:78.703544},{lat:8.759642,lng:78.132625},{lat:9.573609,lng:77.961451},{lat: 8.494436, lng:76.944313}];");
			    out.println(" var flightPath = new google.maps.Polyline({path: flightPlanCoordinates,geodesic: true,strokeColor: '#FF0000',strokeOpacity: 1.0,strokeWeight: 2});");

			    out.println(" flightPath.setMap(map);}</script>");

			    out.println("<script async defer src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyCdEaePs760rnaSqSoPUkEbUpvjCRYoOyo&callback=initMap\"></script>");
				
	}
	else
	{
		
	}
	//end of mapp
	

    
    out.println("<div id='tab1'>");
    out.println("<table >");
	out.println("<tr id='ff'>");
	out.println("<h3>HUB 1</h3>");
	out.println("</tr>");
	
	out.println("<tr id='ff'>");
	out.println("<h3>HUB 2</h3>");
	out.println("</tr>");
	
	out.println("<tr id='ff'>");
	out.println("<h3>HUB 3</h3>");
	out.println("</tr>");
	
	out.println("<tr id='ff'>");
	out.println("<h3>HUB 4</h3>");
	out.println("</tr>");
	out.println("</table>");
	out.println("</div>");
	out.println("<div id='tab2' >");

	out.println("<table >");
	rs.previous();
	while(rs.next())
	{

	
	
		out.println("<tr>");
		if(rs.getString(7).equals("1"))
		{
			out.println("<div id=\"img1\"></div>");
			//mapp
			
		    out.println(" <div id=\"map\"></div>");
		   
		    if(s.equals("KARNATAKA") && d.equals("KERALA")){
		    	out.println("<script> ");
		    out.println(" function initMap() {var map = new google.maps.Map(document.getElementById('map'), {zoom: 5,center: {lat:18.819722, lng: 77.944600},mapTypeId: 'terrain'});");
			out.println(" var flightPlanCoordinates = [{lat:12.966826, lng:77.537328},{lat:9.918291,lng:76.271671},{lat:11.332486,lng:77.715911},{lat: 8.494436, lng:76.944313}];");
		    out.println(" var flightPath = new google.maps.Polyline({path: flightPlanCoordinates,geodesic: true,strokeColor: '#FF0000',strokeOpacity: 1.0,strokeWeight: 2});");
		    out.println("var myLatLng ={lat:12.966826, lng:77.537328};var marker = new google.maps.Marker({position: myLatLng,map: map,title: 'HUB1'});");

		    out.println(" flightPath.setMap(map);}</script>");
		    
		    out.println("<script async defer src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyCdEaePs760rnaSqSoPUkEbUpvjCRYoOyo&callback=initMap\"></script>");
			}
		   
		    else if(s.equals("KERALA") && d.equals("KARNATAKA")){
		    	out.println("<script> "); 
		    	out.println(" function initMap() {var map = new google.maps.Map(document.getElementById('map'), {zoom: 5,center: {lat:18.819722, lng: 77.944600},mapTypeId: 'terrain'});");
					out.println(" var flightPlanCoordinates = [{lat:12.966826, lng:77.537328},{lat:9.918291,lng:76.271671},{lat:11.332486,lng:77.715911},{lat: 8.494436, lng:76.944313}];");
				    out.println(" var flightPath = new google.maps.Polyline({path: flightPlanCoordinates,geodesic: true,strokeColor: '#FF0000',strokeOpacity: 1.0,strokeWeight: 2});");
				    out.println("var myLatLng ={lat: 8.494436, lng:76.944313};var marker = new google.maps.Marker({position: myLatLng,map: map,title: 'HUB1'});");

				    out.println(" flightPath.setMap(map);}</script>");
				    
				    out.println("<script async defer src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyCdEaePs760rnaSqSoPUkEbUpvjCRYoOyo&callback=initMap\"></script>");
		    }
			
		    else if(s.equals("KARNATAKA")&& d.equals("TAMIL NADU") ){
				out.println("<script> ");
			
			    out.println(" function initMap() {var map = new google.maps.Map(document.getElementById('map'), {zoom: 5,center: {lat:18.819722, lng: 77.944600},mapTypeId: 'terrain'});");
				out.println(" var flightPlanCoordinates = [{lat:9.982356, lng:78.703544},{lat:12.661798,lng:78.010150},{lat:11.790130,lng: 77.800075},{lat: 12.966826, lng:77.537328}];");
			    out.println(" var flightPath = new google.maps.Polyline({path: flightPlanCoordinates,geodesic: true,strokeColor: '#FF0000',strokeOpacity: 1.0,strokeWeight: 2});");
			    out.println("var myLatLng ={lat: 12.966826, lng:77.537328};var marker = new google.maps.Marker({position: myLatLng,map: map,title: 'HUB1'});");

			    out.println(" flightPath.setMap(map);}</script>");
			    out.println("<script async defer src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyCdEaePs760rnaSqSoPUkEbUpvjCRYoOyo&callback=initMap\"></script>");
				}
			
		    else if(d.equals("KARNATAKA")&& s.equals("TAMIL NADU")){
				out.println("<script> ");
				
			    out.println(" function initMap() {var map = new google.maps.Map(document.getElementById('map'), {zoom: 5,center: {lat:18.819722, lng: 77.944600},mapTypeId: 'terrain'});");
				out.println(" var flightPlanCoordinates = [{lat:9.982356, lng:78.703544},{lat:12.661798,lng:78.010150},{lat:11.790130,lng: 77.800075},{lat: 12.966826, lng:77.537328}];");
			    out.println(" var flightPath = new google.maps.Polyline({path: flightPlanCoordinates,geodesic: true,strokeColor: '#FF0000',strokeOpacity: 1.0,strokeWeight: 2});");
			    out.println("var myLatLng ={lat:9.982356, lng:78.703544};var marker = new google.maps.Marker({position: myLatLng,map: map,title: 'HUB1'});");

			    out.println(" flightPath.setMap(map);}</script>");
			    out.println("<script async defer src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyCdEaePs760rnaSqSoPUkEbUpvjCRYoOyo&callback=initMap\"></script>");
			}
				
				else if(s.equals("KERALA")&& d.equals("TAMIL NADU")  )
				{out.println("<script> ");
					 out.println(" function initMap() {var map = new google.maps.Map(document.getElementById('map'), {zoom: 5,center: {lat:18.819722, lng: 77.944600},mapTypeId: 'terrain'});");
						out.println(" var flightPlanCoordinates = [{lat:9.982356, lng:78.703544},{lat:8.759642,lng:78.132625},{lat:9.573609,lng:77.961451},{lat: 8.494436, lng:76.944313}];");
					    out.println(" var flightPath = new google.maps.Polyline({path: flightPlanCoordinates,geodesic: true,strokeColor: '#FF0000',strokeOpacity: 1.0,strokeWeight: 2});");
					    out.println("var myLatLng ={lat: 8.494436, lng:76.944313};var marker = new google.maps.Marker({position: myLatLng,map: map,title: 'HUB2'});");

					    out.println(" flightPath.setMap(map);}</script>");

					    out.println("<script async defer src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyCdEaePs760rnaSqSoPUkEbUpvjCRYoOyo&callback=initMap\"></script>");
						
			}
		    
				else if(d.equals("KERALA")&& s.equals("TAMIL NADU")){
					out.println("<script> ");
					 out.println(" function initMap() {var map = new google.maps.Map(document.getElementById('map'), {zoom: 5,center: {lat:18.819722, lng: 77.944600},mapTypeId: 'terrain'});");
						out.println(" var flightPlanCoordinates = [{lat:9.982356, lng:78.703544},{lat:8.759642,lng:78.132625},{lat:9.573609,lng:77.961451},{lat: 8.494436, lng:76.944313}];");
					    out.println(" var flightPath = new google.maps.Polyline({path: flightPlanCoordinates,geodesic: true,strokeColor: '#FF0000',strokeOpacity: 1.0,strokeWeight: 2});");
					    out.println("var myLatLng ={lat:9.982356, lng:78.703544};var marker = new google.maps.Marker({position: myLatLng,map: map,title: 'HUB2'});");

					    out.println(" flightPath.setMap(map);}</script>");

					    out.println("<script async defer src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyCdEaePs760rnaSqSoPUkEbUpvjCRYoOyo&callback=initMap\"></script>");
				}
			else
			{
				
			}
			//end of mapp
			
			
			
		   
		}
		else
		{ 
			out.println("<div id=\"dmg1\"></div>");
			 
			
		}
		out.println("</tr>");
		
		
		out.println("<tr>");
		if(rs.getString(8).equals("1"))
		{
			out.println("<div id=\"img1\"></div>");
			
				//mapp
			
		    out.println(" <div id=\"map\"></div>");
		   
		    if(s.equals("KARNATAKA") && d.equals("KERALA")){
		    	out.println("<script> ");
		    out.println(" function initMap() {var map = new google.maps.Map(document.getElementById('map'), {zoom: 5,center: {lat:18.819722, lng: 77.944600},mapTypeId: 'terrain'});");
			out.println(" var flightPlanCoordinates = [{lat:12.966826, lng:77.537328},{lat:9.918291,lng:76.271671},{lat:11.332486,lng:77.715911},{lat: 8.494436, lng:76.944313}];");
		    out.println(" var flightPath = new google.maps.Polyline({path: flightPlanCoordinates,geodesic: true,strokeColor: '#FF0000',strokeOpacity: 1.0,strokeWeight: 2});");
		    out.println("var myLatLng ={lat:9.918291,lng:76.271671};var marker = new google.maps.Marker({position: myLatLng,map: map,title: 'HUB2'});");

		    out.println(" flightPath.setMap(map);}</script>");
		    
		    out.println("<script async defer src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyCdEaePs760rnaSqSoPUkEbUpvjCRYoOyo&callback=initMap\"></script>");
			}
		   
		    else if(s.equals("KERALA") && d.equals("KARNATAKA")){
		    	out.println("<script> "); 
		    	out.println(" function initMap() {var map = new google.maps.Map(document.getElementById('map'), {zoom: 5,center: {lat:18.819722, lng: 77.944600},mapTypeId: 'terrain'});");
					out.println(" var flightPlanCoordinates = [{lat:12.966826, lng:77.537328},{lat:9.918291,lng:76.271671},{lat:11.332486,lng:77.715911},{lat: 8.494436, lng:76.944313}];");
				    out.println(" var flightPath = new google.maps.Polyline({path: flightPlanCoordinates,geodesic: true,strokeColor: '#FF0000',strokeOpacity: 1.0,strokeWeight: 2});");
				    out.println("var myLatLng ={lat:11.332486,lng:77.715911};var marker = new google.maps.Marker({position: myLatLng,map: map,title: 'HUB2'});");

				    out.println(" flightPath.setMap(map);}</script>");
				    
				    out.println("<script async defer src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyCdEaePs760rnaSqSoPUkEbUpvjCRYoOyo&callback=initMap\"></script>");
		    }
			
		    else if(s.equals("KARNATAKA")&& d.equals("TAMIL NADU") ){
				out.println("<script> ");
			
			    out.println(" function initMap() {var map = new google.maps.Map(document.getElementById('map'), {zoom: 5,center: {lat:18.819722, lng: 77.944600},mapTypeId: 'terrain'});");
				out.println(" var flightPlanCoordinates = [{lat:9.982356, lng:78.703544},{lat:12.661798,lng:78.010150},{lat:11.790130,lng: 77.800075},{lat: 12.966826, lng:77.537328}];");
			    out.println(" var flightPath = new google.maps.Polyline({path: flightPlanCoordinates,geodesic: true,strokeColor: '#FF0000',strokeOpacity: 1.0,strokeWeight: 2});");
			    out.println("var myLatLng ={lat:11.790130,lng: 77.800075};var marker = new google.maps.Marker({position: myLatLng,map: map,title: 'HUB2'});");

			    out.println(" flightPath.setMap(map);}</script>");
			    out.println("<script async defer src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyCdEaePs760rnaSqSoPUkEbUpvjCRYoOyo&callback=initMap\"></script>");
				}
			
		    else if(d.equals("KARNATAKA")&& s.equals("TAMIL NADU")){
				out.println("<script> ");
				
			    out.println(" function initMap() {var map = new google.maps.Map(document.getElementById('map'), {zoom: 5,center: {lat:18.819722, lng: 77.944600},mapTypeId: 'terrain'});");
				out.println(" var flightPlanCoordinates = [{lat:9.982356, lng:78.703544},{lat:12.661798,lng:78.010150},{lat:11.790130,lng: 77.800075},{lat: 12.966826, lng:77.537328}];");
			    out.println(" var flightPath = new google.maps.Polyline({path: flightPlanCoordinates,geodesic: true,strokeColor: '#FF0000',strokeOpacity: 1.0,strokeWeight: 2});");
			    out.println("var myLatLng ={lat:12.661798,lng:78.010150};var marker = new google.maps.Marker({position: myLatLng,map: map,title: 'HUB2'});");

			    out.println(" flightPath.setMap(map);}</script>");
			    out.println("<script async defer src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyCdEaePs760rnaSqSoPUkEbUpvjCRYoOyo&callback=initMap\"></script>");
			}
				
				else if(s.equals("KERALA")&& d.equals("TAMIL NADU")  )
				{out.println("<script> ");
					 out.println(" function initMap() {var map = new google.maps.Map(document.getElementById('map'), {zoom: 5,center: {lat:18.819722, lng: 77.944600},mapTypeId: 'terrain'});");
						out.println(" var flightPlanCoordinates = [{lat:9.982356, lng:78.703544},{lat:8.759642,lng:78.132625},{lat:9.573609,lng:77.961451},{lat: 8.494436, lng:76.944313}];");
					    out.println(" var flightPath = new google.maps.Polyline({path: flightPlanCoordinates,geodesic: true,strokeColor: '#FF0000',strokeOpacity: 1.0,strokeWeight: 2});");
					    out.println("var myLatLng ={lat:8.759642,lng:78.132625};var marker = new google.maps.Marker({position: myLatLng,map: map,title: 'HUB2'});");

					    out.println(" flightPath.setMap(map);}</script>");

					    out.println("<script async defer src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyCdEaePs760rnaSqSoPUkEbUpvjCRYoOyo&callback=initMap\"></script>");
						
			}
		    
				else if(d.equals("KERALA")&& s.equals("TAMIL NADU")){
					out.println("<script> ");
					 out.println(" function initMap() {var map = new google.maps.Map(document.getElementById('map'), {zoom: 5,center: {lat:18.819722, lng: 77.944600},mapTypeId: 'terrain'});");
						out.println(" var flightPlanCoordinates = [{lat:9.982356, lng:78.703544},{lat:8.759642,lng:78.132625},{lat:9.573609,lng:77.961451},{lat: 8.494436, lng:76.944313}];");
					    out.println(" var flightPath = new google.maps.Polyline({path: flightPlanCoordinates,geodesic: true,strokeColor: '#FF0000',strokeOpacity: 1.0,strokeWeight: 2});");
					    out.println("var myLatLng ={lat:9.573609,lng:77.961451};var marker = new google.maps.Marker({position: myLatLng,map: map,title: 'HUB2'});");

					    out.println(" flightPath.setMap(map);}</script>");

					    out.println("<script async defer src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyCdEaePs760rnaSqSoPUkEbUpvjCRYoOyo&callback=initMap\"></script>");
				}
			else
			{
				
			}
			//end of mapp
			

		}
		else
		{
			out.println("<div id=\"dmg1\"></div>");
			

		}
		out.println("</tr>");
		
		
		out.println("<tr>");
		if(rs.getString(9).equals("1"))
		{
			out.println("<div id=\"img1\"></div>");
//mapp
			
		    out.println(" <div id=\"map\"></div>");
		   
		    if(s.equals("KARNATAKA") && d.equals("KERALA")){
		    out.println("<script> ");
		    out.println(" function initMap() {var map = new google.maps.Map(document.getElementById('map'), {zoom: 5,center: {lat:18.819722, lng: 77.944600},mapTypeId: 'terrain'});");
			out.println(" var flightPlanCoordinates = [{lat:12.966826, lng:77.537328},{lat:9.918291,lng:76.271671},{lat:11.332486,lng:77.715911},{lat: 8.494436, lng:76.944313}];");
		    out.println(" var flightPath = new google.maps.Polyline({path: flightPlanCoordinates,geodesic: true,strokeColor: '#FF0000',strokeOpacity: 1.0,strokeWeight: 2});");
		    out.println("var myLatLng ={lat:11.332486,lng:77.715911};var marker = new google.maps.Marker({position: myLatLng,map: map,title: 'HUB3'});");

		    out.println(" flightPath.setMap(map);}</script>");
		    
		    out.println("<script async defer src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyCdEaePs760rnaSqSoPUkEbUpvjCRYoOyo&callback=initMap\"></script>");
			}
		   
		    else if(s.equals("KERALA") && d.equals("KARNATAKA")){
		    	out.println("<script> "); 
		    	out.println(" function initMap() {var map = new google.maps.Map(document.getElementById('map'), {zoom: 5,center: {lat:18.819722, lng: 77.944600},mapTypeId: 'terrain'});");
					out.println(" var flightPlanCoordinates = [{lat:12.966826, lng:77.537328},{lat:9.918291,lng:76.271671},{lat:11.332486,lng:77.715911},{lat: 8.494436, lng:76.944313}];");
				    out.println(" var flightPath = new google.maps.Polyline({path: flightPlanCoordinates,geodesic: true,strokeColor: '#FF0000',strokeOpacity: 1.0,strokeWeight: 2});");
				    out.println("var myLatLng ={lat:9.918291,lng:76.271671};var marker = new google.maps.Marker({position: myLatLng,map: map,title: 'HUB3'});");

				    out.println(" flightPath.setMap(map);}</script>");
				    
				    out.println("<script async defer src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyCdEaePs760rnaSqSoPUkEbUpvjCRYoOyo&callback=initMap\"></script>");
		    }
			
		    else if(s.equals("KARNATAKA")&& d.equals("TAMIL NADU") ){
				out.println("<script> ");
			
			    out.println(" function initMap() {var map = new google.maps.Map(document.getElementById('map'), {zoom: 5,center: {lat:18.819722, lng: 77.944600},mapTypeId: 'terrain'});");
				out.println(" var flightPlanCoordinates = [{lat:9.982356, lng:78.703544},{lat:12.661798,lng:78.010150},{lat:11.790130,lng: 77.800075},{lat: 12.966826, lng:77.537328}];");
			    out.println(" var flightPath = new google.maps.Polyline({path: flightPlanCoordinates,geodesic: true,strokeColor: '#FF0000',strokeOpacity: 1.0,strokeWeight: 2});");
			    out.println("var myLatLng ={lat:12.661798,lng:78.010150};var marker = new google.maps.Marker({position: myLatLng,map: map,title: 'HUB3'});");

			    out.println(" flightPath.setMap(map);}</script>");
			    out.println("<script async defer src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyCdEaePs760rnaSqSoPUkEbUpvjCRYoOyo&callback=initMap\"></script>");
				}
			
		    else if(d.equals("KARNATAKA")&& s.equals("TAMIL NADU")){
				out.println("<script> ");
				
			    out.println(" function initMap() {var map = new google.maps.Map(document.getElementById('map'), {zoom: 5,center: {lat:18.819722, lng: 77.944600},mapTypeId: 'terrain'});");
				out.println(" var flightPlanCoordinates = [{lat:9.982356, lng:78.703544},{lat:12.661798,lng:78.010150},{lat:11.790130,lng: 77.800075},{lat: 12.966826, lng:77.537328}];");
			    out.println(" var flightPath = new google.maps.Polyline({path: flightPlanCoordinates,geodesic: true,strokeColor: '#FF0000',strokeOpacity: 1.0,strokeWeight: 2});");
			    out.println("var myLatLng ={lat:11.790130,lng: 77.800075};var marker = new google.maps.Marker({position: myLatLng,map: map,title: 'HUB3'});");

			    out.println(" flightPath.setMap(map);}</script>");
			    out.println("<script async defer src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyCdEaePs760rnaSqSoPUkEbUpvjCRYoOyo&callback=initMap\"></script>");
			}
				
				else if(s.equals("KERALA")&& d.equals("TAMIL NADU")  )
				{out.println("<script> ");
					 out.println(" function initMap() {var map = new google.maps.Map(document.getElementById('map'), {zoom: 5,center: {lat:18.819722, lng: 77.944600},mapTypeId: 'terrain'});");
						out.println(" var flightPlanCoordinates = [{lat:9.982356, lng:78.703544},{lat:8.759642,lng:78.132625},{lat:9.573609,lng:77.961451},{lat: 8.494436, lng:76.944313}];");
					    out.println(" var flightPath = new google.maps.Polyline({path: flightPlanCoordinates,geodesic: true,strokeColor: '#FF0000',strokeOpacity: 1.0,strokeWeight: 2});");
					    out.println("var myLatLng ={lat:8.759642,lng:78.132625};var marker = new google.maps.Marker({position: myLatLng,map: map,title: 'HUB3'});");

					    out.println(" flightPath.setMap(map);}</script>");

					    out.println("<script async defer src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyCdEaePs760rnaSqSoPUkEbUpvjCRYoOyo&callback=initMap\"></script>");
						
			}
		    
				else if(d.equals("KERALA")&& s.equals("TAMIL NADU")){
					out.println("<script> ");
					 out.println(" function initMap() {var map = new google.maps.Map(document.getElementById('map'), {zoom: 5,center: {lat:18.819722, lng: 77.944600},mapTypeId: 'terrain'});");
						out.println(" var flightPlanCoordinates = [{lat:9.982356, lng:78.703544},{lat:8.759642,lng:78.132625},{lat:9.573609,lng:77.961451},{lat: 8.494436, lng:76.944313}];");
					    out.println(" var flightPath = new google.maps.Polyline({path: flightPlanCoordinates,geodesic: true,strokeColor: '#FF0000',strokeOpacity: 1.0,strokeWeight: 2});");
					    out.println("var myLatLng ={lat:9.573609,lng:77.961451};var marker = new google.maps.Marker({position: myLatLng,map: map,title: 'HUB3'});");

					    out.println(" flightPath.setMap(map);}</script>");

					    out.println("<script async defer src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyCdEaePs760rnaSqSoPUkEbUpvjCRYoOyo&callback=initMap\"></script>");
				}
			else
			{
				
			}
			//end of mapp
			

		}
		else
		{
			out.println("<div id=\"dmg1\"></div>");
			 					
		}
		out.println("</tr>");
		
		out.println("<tr>");
		if(rs.getString(10).equals("1"))
		{
			out.println("<div id=\"img1\"></div>");
			

		    out.println(" <div id=\"map\"></div>");
		   
		    if(s.equals("KARNATAKA") && d.equals("KERALA")){
		    	out.println("<script> ");
		    out.println(" function initMap() {var map = new google.maps.Map(document.getElementById('map'), {zoom: 5,center: {lat:18.819722, lng: 77.944600},mapTypeId: 'terrain'});");
			out.println(" var flightPlanCoordinates = [{lat:12.966826, lng:77.537328},{lat:9.918291,lng:76.271671},{lat:11.332486,lng:77.715911},{lat: 8.494436, lng:76.944313}];");
		    out.println(" var flightPath = new google.maps.Polyline({path: flightPlanCoordinates,geodesic: true,strokeColor: '#FF0000',strokeOpacity: 1.0,strokeWeight: 2});");
		    out.println("var myLatLng ={lat: 8.494436, lng:76.944313};var marker = new google.maps.Marker({position: myLatLng,map: map,title: 'HUB3'});");

		    out.println(" flightPath.setMap(map);}</script>");
		    
		    out.println("<script async defer src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyCdEaePs760rnaSqSoPUkEbUpvjCRYoOyo&callback=initMap\"></script>");
			}
		   
		    else if(s.equals("KERALA") && d.equals("KARNATAKA")){
		    	out.println("<script> "); 
		    	out.println(" function initMap() {var map = new google.maps.Map(document.getElementById('map'), {zoom: 5,center: {lat:18.819722, lng: 77.944600},mapTypeId: 'terrain'});");
					out.println(" var flightPlanCoordinates = [{lat:12.966826, lng:77.537328},{lat:9.918291,lng:76.271671},{lat:11.332486,lng:77.715911},{lat: 8.494436, lng:76.944313}];");
				    out.println(" var flightPath = new google.maps.Polyline({path: flightPlanCoordinates,geodesic: true,strokeColor: '#FF0000',strokeOpacity: 1.0,strokeWeight: 2});");
				    out.println("var myLatLng ={lat:12.966826, lng:77.537328};var marker = new google.maps.Marker({position: myLatLng,map: map,title: 'HUB3'});");

				    out.println(" flightPath.setMap(map);}</script>");
				    
				    out.println("<script async defer src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyCdEaePs760rnaSqSoPUkEbUpvjCRYoOyo&callback=initMap\"></script>");
		    }
			
		    else if(s.equals("KARNATAKA")&& d.equals("TAMIL NADU") ){
				out.println("<script> ");
			
			    out.println(" function initMap() {var map = new google.maps.Map(document.getElementById('map'), {zoom: 5,center: {lat:18.819722, lng: 77.944600},mapTypeId: 'terrain'});");
				out.println(" var flightPlanCoordinates = [{lat:9.982356, lng:78.703544},{lat:12.661798,lng:78.010150},{lat:11.790130,lng: 77.800075},{lat: 12.966826, lng:77.537328}];");
			    out.println(" var flightPath = new google.maps.Polyline({path: flightPlanCoordinates,geodesic: true,strokeColor: '#FF0000',strokeOpacity: 1.0,strokeWeight: 2});");
			    out.println("var myLatLng ={lat:11.790130,lng: 77.800075};var marker = new google.maps.Marker({position: myLatLng,map: map,title: 'HUB3'});");

			    out.println(" flightPath.setMap(map);}</script>");
			    out.println("<script async defer src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyCdEaePs760rnaSqSoPUkEbUpvjCRYoOyo&callback=initMap\"></script>");
				}
			
		    else if(d.equals("KARNATAKA")&& s.equals("TAMIL NADU")){
				out.println("<script> ");
				
			    out.println(" function initMap() {var map = new google.maps.Map(document.getElementById('map'), {zoom: 5,center: {lat:18.819722, lng: 77.944600},mapTypeId: 'terrain'});");
				out.println(" var flightPlanCoordinates = [{lat:9.982356, lng:78.703544},{lat:12.661798,lng:78.010150},{lat:11.790130,lng: 77.800075},{lat: 12.966826, lng:77.537328}];");
			    out.println(" var flightPath = new google.maps.Polyline({path: flightPlanCoordinates,geodesic: true,strokeColor: '#FF0000',strokeOpacity: 1.0,strokeWeight: 2});");
			    out.println("var myLatLng ={lat:9.982356, lng:78.703544};var marker = new google.maps.Marker({position: myLatLng,map: map,title: 'HUB3'});");

			    out.println(" flightPath.setMap(map);}</script>");
			    out.println("<script async defer src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyCdEaePs760rnaSqSoPUkEbUpvjCRYoOyo&callback=initMap\"></script>");
			}
				
				else if(s.equals("KERALA")&& d.equals("TAMIL NADU")  )
				{out.println("<script> ");
					 out.println(" function initMap() {var map = new google.maps.Map(document.getElementById('map'), {zoom: 5,center: {lat:18.819722, lng: 77.944600},mapTypeId: 'terrain'});");
						out.println(" var flightPlanCoordinates = [{lat:9.982356, lng:78.703544},{lat:8.759642,lng:78.132625},{lat:9.573609,lng:77.961451},{lat: 8.494436, lng:76.944313}];");
					    out.println(" var flightPath = new google.maps.Polyline({path: flightPlanCoordinates,geodesic: true,strokeColor: '#FF0000',strokeOpacity: 1.0,strokeWeight: 2});");
					    out.println("var myLatLng ={lat:9.982356, lng:78.703544};var marker = new google.maps.Marker({position: myLatLng,map: map,title: 'HUB3'});");

					    out.println(" flightPath.setMap(map);}</script>");

					    out.println("<script async defer src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyCdEaePs760rnaSqSoPUkEbUpvjCRYoOyo&callback=initMap\"></script>");
						
			}
		    
				else if(d.equals("KERALA")&& s.equals("TAMIL NADU")){
					out.println("<script> ");
					 out.println(" function initMap() {var map = new google.maps.Map(document.getElementById('map'), {zoom: 5,center: {lat:18.819722, lng: 77.944600},mapTypeId: 'terrain'});");
						out.println(" var flightPlanCoordinates = [{lat:9.982356, lng:78.703544},{lat:8.759642,lng:78.132625},{lat:9.573609,lng:77.961451},{lat: 8.494436, lng:76.944313}];");
					    out.println(" var flightPath = new google.maps.Polyline({path: flightPlanCoordinates,geodesic: true,strokeColor: '#FF0000',strokeOpacity: 1.0,strokeWeight: 2});");
					    out.println("var myLatLng ={lat: 8.494436, lng:76.944313};var marker = new google.maps.Marker({position: myLatLng,map: map,title: 'HUB3'});");

					    out.println(" flightPath.setMap(map);}</script>");

					    out.println("<script async defer src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyCdEaePs760rnaSqSoPUkEbUpvjCRYoOyo&callback=initMap\"></script>");
				}
			else
			{
				
			}
			//end of mapp
			

		}
		else
		{
			out.println("<div id=\"dmg1\"></div>");
			
			
		}
		out.println("</tr>");
		
	}
	out.println("</table>");
	out.println("</div>");
	out.println("</body>");
	out.println("</html>");
	}
	
	con.close();  
	
	
}catch(Exception e){ System.out.println(e);}  


%>
</body>
</html>