<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<style>

h1 {text-align: center;}
form {text-align: center;}

h1 {
  margin-top: 200px;
  margin-bottom: 10px;
  margin-right: 150px;
  margin-left: 80px;
}

form {
  margin-top: 10px;
  margin-bottom: 100px;
  margin-right: 150px;
  margin-left: 80px;
}


</style>



<body bgcolor = #FFEFD5>
	<form action="add" method="post">
		<%
		String id = (String)session.getAttribute("id");	
		String iname = (String)session.getAttribute("iname");	
		String name = (String)session.getAttribute("name");	
		String email = (String)session.getAttribute("email");	
		String amt = (String)session.getAttribute("amt");	
		String ai = (String)session.getAttribute("ai");
		%>
			<h1>Welcome To AP Auctions. Please Enter Bid.</h1>
			<h2><span style="color:red;">Required Data Missing.</span> Enter and Resubmit</h2>
		<% 
			if(id.isEmpty()==true){%>
			<span style="color:red;">Required field!</span> Item ID: <input type="text" name="id" pattern="[A-Z-0-9]+"><br>	
			<%}else {%>
				Item ID: <input type="text" name="id"  pattern="[A-Z-0-9]+" value=<%=id %>><br>
			
			<%}if(iname.isEmpty()==true){ %>
				<span style="color:red;">Required field!</span> Item Name: <input type="text" name="iname" pattern="[A-Z-a-z]+"><br>
			<%}else {%>
				Item Name: <input type="text" name="iname" pattern="[A-Z-a-z]+" value=<%=iname %>><br>
			

			<%}if(name.isEmpty()==true) {%>
				<span style="color:red;">Required field!</span> Your Name: <input type="text" name="name" pattern="[A-Z-a-z- ]+"><br>
			<%}else {%>
				Your Name: <input type="text" name="name" pattern="[A-Z-a-z- ]+" value=<%=name %>><br>
			
			<%}if(email.isEmpty()==true) {%>
				<span style="color:red;">Required field!</span> Your Email Address: <input type="text" name="email" pattern="[A-Z-a-z-@-0-9-.]+"><br>
			<%}else {%>
				Your Email Address: <input type="text" name="email" pattern="[A-Z-a-z-@-0-9-.]+" value=<%=email%>><br>
			
			
			<%}if(amt.isEmpty()==true) {%>
				<span style="color:red;">Required field!</span> Amount Bid: <input type="text" name="amt" pattern="[0-9]+"><br>
			<%}else {%>
				Amount Bid: <input type="text" name="amt" pattern="[0-9]+" value=<%=amt %>><br>
			<% } %>	
			Auto-increment bid to match other bidders?:<input type="checkbox" name="ai" id="myCheck" value="true"><br>
			<input type="submit" value="Submit Bid">
	</form>
</body>
</html>