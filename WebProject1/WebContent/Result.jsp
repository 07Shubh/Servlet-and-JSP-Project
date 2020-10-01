<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>

h1 {text-align: center;}
h3 {text-align: center;}
div{text-align: center;}
div{box: center;}

h1 {
  margin-top: 100px;
  margin-bottom: 10px;
  margin-right: 150px;
  margin-left: 80px;
}

h3 {
  margin-top: 50px;
  margin-bottom: 50px;
  margin-right: 150px;
  margin-left: 80px;
}

.rectangle2 {
  margin-left:33%;
  height: 25px;
  width: 400px;
  background-color: black;
  border-color: black;
  border-style: double;
  color: white;
  text-align: centre;
}
.rectangle {
  margin-left:33%;
  height: 25px;
  width: 400px;
  background-color: transparent;
  border-color: black;
  border-style: double;
  text-align: centre;
}

</style>
<body bgcolor = "Yellow">
<%		
        String a;
		String id = (String)session.getAttribute("id");	
		String iname = (String)session.getAttribute("iname");	
		String name = (String)session.getAttribute("name");	
		String email = (String)session.getAttribute("email");	
		String amt = (String)session.getAttribute("amt");	
		String ai = (String)session.getAttribute("ai");
		if(ai==null) {
			a = "false";
		}else{
			a = "true";
		}
		
	%>
	
	<h1>Bid Submitted</h1>
	<h3>Your bid is now active. If your bid is successful, you will be notified within 24 hours of the close of bidding.</h3>
	
	<div class="rectangle2"><%=iname %></div>
	<div class="rectangle"><%out.print("Item ID: "+id); %></div>
	<div class="rectangle"><%out.print("Name: "+name); %></div>
	<div class="rectangle"><%out.print("Email Address: "+email); %></div>
	<div class="rectangle"><%out.print("Bid price: Rs."+amt); %></div>
	<div class="rectangle"><%out.print("Auto-increment price: "+ a); %></div>
</body>
</html>