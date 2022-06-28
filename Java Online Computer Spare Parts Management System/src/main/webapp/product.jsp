<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Details</title>

	<link rel="stylesheet" href="css/style02.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	
</head>
<body>





				<div class="container">
		<div class="row">
			<div class="col-md-5">
				


<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
  
  
 <% 
  String proID = request.getParameter("id");
  if("1".equals(proID)){ 
 %>
  
    <div class="carousel-item active">
      <img src="images/mouse1.1.jpg" class="d-block w-100" alt="First slide">
    </div>
    <div class="carousel-item">
      <img src="images/mouse1.2.jpg" class="d-block w-100" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img src="images/mouse1.3.jpg" class="d-block w-100" alt="Third slide">
    </div>
    
<% } %>


 <% 
 	if("2".equals(proID)){ 
 %>
  
    <div class="carousel-item active">
      <img src="images/keyboard1.1.jpg" class="d-block w-100" alt="First slide">
    </div>
    <div class="carousel-item">
      <img src="images/keyboard1.2.jpg" class="d-block w-100" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img src="images/keyboard1.3.jpg" class="d-block w-100" alt="Third slide">
    </div>
    
<% } %>



 <% 
  if("3".equals(proID)){ 
 %>
  
    <div class="carousel-item active">
      <img src="images/headphone1.1.jpg" class="d-block w-100" alt="First slide">
    </div>
    <div class="carousel-item">
      <img src="images/headphone1.2.jpg" class="d-block w-100" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img src="images/headphone1.3.jpg" class="d-block w-100" alt="Third slide">
    </div>
    
<% } %>


 <% 
  if("4".equals(proID)){ 
 %>
  
    <div class="carousel-item active">
      <img src="images/vga1.1.jpg" class="d-block w-100" alt="First slide">
    </div>
    <div class="carousel-item">
      <img src="images/vga1.2.jpg" class="d-block w-100" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img src="images/vga1.3.jpg" class="d-block w-100" alt="Third slide">
    </div>
    
<% } %>



 <% 
  if("5".equals(proID)){ 
 %>
  
    <div class="carousel-item active">
      <img src="images/ram1.1.jpg" class="d-block w-100" alt="First slide">
    </div>
    <div class="carousel-item">
      <img src="images/ram1.2.jpg" class="d-block w-100" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img src="images/ram1.3.jpg" class="d-block w-100" alt="Third slide">
    </div>
    
<% } %>


 <% 
  if("6".equals(proID)){ 
 %>
  
    <div class="carousel-item active">
      <img src="images/processor1.1.jpg" class="d-block w-100" alt="First slide">
    </div>
    <div class="carousel-item">
      <img src="images/processor1.2.jpg" class="d-block w-100" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img src="images/processor1.3.jpg" class="d-block w-100" alt="Third slide">
    </div>
    
<% } %>



 <% 
  if("7".equals(proID)){ 
 %>
  
    <div class="carousel-item active">
      <img src="images/motherboards1.1.jpg" class="d-block w-100" alt="First slide">
    </div>
    <div class="carousel-item">
      <img src="images/motherboards1.2.jpg" class="d-block w-100" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img src="images/motherboards1.3.jpg" class="d-block w-100" alt="Third slide">
    </div>
    
<% } %>



 <% 
  if("8".equals(proID)){ 
 %>
  
    <div class="carousel-item active">
      <img src="images/monitors1.1.jpg" class="d-block w-100" alt="First slide">
    </div>
    <div class="carousel-item">
      <img src="images/monitors1.2.jpg" class="d-block w-100" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img src="images/monitors1.3.jpg" class="d-block w-100" alt="Third slide">
    </div>
    
<% } %>


 <% 
  if("9".equals(proID)){ 
 %>
  
    <div class="carousel-item active">
      <img src="images/ram2.1.jpg" class="d-block w-100" alt="First slide">
    </div>
    <div class="carousel-item">
      <img src="images/ram2.2.jpg" class="d-block w-100" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img src="images/ram2.3.jpg" class="d-block w-100" alt="Third slide">
    </div>
    
<% } %>



 <% 
  if("10".equals(proID)){ 
 %>
  
    <div class="carousel-item active">
      <img src="images/processor2.1.jpg" class="d-block w-100" alt="First slide">
    </div>
    <div class="carousel-item">
      <img src="images/processor2.2.jpg" class="d-block w-100" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img src="images/processor2.3.jpg" class="d-block w-100" alt="Third slide">
    </div>
    
<% } %>


 <% 
  if("11".equals(proID)){ 
 %>
  
    <div class="carousel-item active">
      <img src="images/motherboards2.1.jpg" class="d-block w-100" alt="First slide">
    </div>
    <div class="carousel-item">
      <img src="images/motherboards2.2.jpg" class="d-block w-100" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img src="images/motherboards2.3.jpg" class="d-block w-100" alt="Third slide">
    </div>
    
<% } %>


 <% 
  if("12".equals(proID)){ 
 %>
  
    <div class="carousel-item active">
      <img src="images/monitors2.1.jpg" class="d-block w-100" alt="First slide">
    </div>
    <div class="carousel-item">
      <img src="images/monitors2.2.jpg" class="d-block w-100" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img src="images/monitors2.3.jpg" class="d-block w-100" alt="Third slide">
    </div>
    
<% } %>


 <% 
  if("13".equals(proID)){ 
 %>
  
    <div class="carousel-item active">
      <img src="images/keyboard2.1.jpg" class="d-block w-100" alt="First slide">
    </div>
    <div class="carousel-item">
      <img src="images/keyboard2.2.jpg" class="d-block w-100" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img src="images/keyboard2.3.jpg" class="d-block w-100" alt="Third slide">
    </div>
    
<% } %>


 <% 
  if("14".equals(proID)){ 
 %>
  
    <div class="carousel-item active">
      <img src="images/airpod1.1.jpg" class="d-block w-100" alt="First slide">
    </div>
    <div class="carousel-item">
      <img src="images/airpod1.2.jpg" class="d-block w-100" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img src="images/airpod1.3.jpg" class="d-block w-100" alt="Third slide">
    </div>
    
<% } %>


 <% 
  if("15".equals(proID)){ 
 %>
  
    <div class="carousel-item active">
      <img src="images/vga2.1.jpg" class="d-block w-100" alt="First slide">
    </div>
    <div class="carousel-item">
      <img src="images/vga2.2.jpg" class="d-block w-100" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img src="images/vga2.3.jpg" class="d-block w-100" alt="Third slide">
    </div>
    
<% } %>



 <% 
  if("16".equals(proID)){ 
 %>
  
    <div class="carousel-item active">
      <img src="images/speaker1.1.jpg" class="d-block w-100" alt="First slide">
    </div>
    <div class="carousel-item">
      <img src="images/speaker1.2.jpg" class="d-block w-100" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img src="images/speaker1.3.jpg" class="d-block w-100" alt="Third slide">
    </div>
    
<% } %>

    
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


			</div>

			<div class="col-md-7">
					
	
					<form action="or" method="post">
					
					<c:forEach var="pro" items="${proDetails}">
					
						<p class="newarrival text-center">NEW</p>
						<h2><input type="text" name="name" class="proName" value="${pro.name}" readonly></h2>
						<h5>Product Code:<input type="text" name="ID" value="${pro.ID}" readonly></h5>
						<img src="images/stars.png" class="stars">
						<p class="price">USD $<input type="text" name="price" class="price" value="${pro.price}" readonly></p>
						<p><b>Availability: ${pro.availability}<input style="font-weight: bold;" type="text" name="s_quantity" value="${pro.quantity}" readonly></b></p>
						<p><b>Condition:</b> New</p>
						<p><b>Type:</b><input type="text" name="category" value="${pro.category}" readonly></p>
						<p><b>Brand:</b><input type="text" name="brand" value="${pro.brand}" readonly></p>
						
						
						
					
					</c:forEach>
					
						<div class="inQu">
							<p><b>Quantity: <input type="number" min="1" max="99" name="quantity" value="1"></b></p>
						</div>
						
						<div class="inCus1">
							<p><b>Customer Name: <input type="text" name="c_name" pattern="[a-zA-Z'-'\s]*" required></b></p>
						</div>
						
						<div class="inCus2">
							<p><b>Customer Address: <input type="text" name="c_add" required></b></p>
						</div>
						
						<div class="inCus3">
							<p><b>Contact Number: <input type="text" name="con_number" pattern="\d{10}" required></b></p>
						</div>
						
						
						
						
						<div class="inCal">
							<input type="submit" name="submit" value="Submit Order">
						</div> <br>
						
					
					
					</form>
					


			</div>

		</div>
	</div>
	
	
	
	
	
	
	

</body>
</html>