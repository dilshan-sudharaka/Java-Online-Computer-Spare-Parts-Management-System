<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<script type="text/javascript" src='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js'></script>
	<link rel="stylesheet" type="text/css" href='https://use.fontawesome.com/releases/v5.7.2/css/all.css'>
	<script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
	<link rel="stylesheet" type="text/css" href="css/style03.css">
	
</head>
<body>

<c:forEach var="order" items="${ordDetails}">
	<form action="de" method="post">

	<div class="offset-xl-2 col-xl-8 col-lg-12 col-md-12 col-sm-12 padding">
		<div class="card">
			<div class="card-header p-4">
				<a href="#" class="pt-2 d-inline-block">TEC Solution Online Computer Spare Parts</a> <br>
				<div class="float-right">
					<h3 class="mb-0">Invoice #ORD-${order.t_ID}</h3>
					Date: ${order.date}
				</div>
			</div>

			<div class="card-body">
				<div class="row mb-4">
					<div class="col-sm-6">
						<h5 class="mb-3">From:</h5>
						<h3 class="text-dark mb-1"></h3>
						<div>TEC Solution Private Limited</div>
						<div>397,</div>
						<div>Thalangama North,</div>
						<div>Battaramulla</div>
						<div>Email: tecsolution@gmail.com</div>
						<div>Phone: +94 7577 13 501</div>
					</div>

					<div class="col-sm-6">
						<h5 class="mb-3">To:</h5>
						<h3 class="text-dark mb-1">${order.c_name}</h3>
						<div>${order.c_add}</div>
						<div>Email: ${order.c_name}@gmail.com</div>
						<div>Phone: +94 ${order.con_number}</div>
					</div>
				</div>

				<div class="table-responsive-sm">
					<table class="table table-striped">
						<thead>
							<tr>
								<th class="center">Pro ID</th>
								<th>Item Name</th>
								<th>category</th>
								<th>Brand</th>
								<th class="right">Price</th>
								<th class="center">Qty</th>
								<th class="right">Total</th>
							</tr>
						</thead>

						<tbody>
							<tr>
								<td class="center">${order.p_id}</td>
								<td class="left strong">${order.name}</td>
								<td class="left">${order.category}</td>
								<td class="right">${order.brand}</td>
								<td class="center">$ ${order.price}</td>
								<td class="right">${order.quantity}</td>
								<td class="right">$ ${order.to_price}</td>
							</tr>

						</tbody>
					</table>
				</div>

				<div class="row">
					<div class="col-lg-4 col-sm-5 ml-auto">
						<table class="table table-clear">
							<tbody>
								<tr>
									<td class="left">
										<strong class="text-dark">Subtotal</strong>
									</td>

									<td class="right">$ ${order.to_price}</td>
								</tr>


								<tr>
									<td class="left">
										<strong class="text-dark">Total</strong>
									</td>

									<td class="right">$ ${order.to_price}</td>
								</tr>

							</tbody>
						</table>
					</div>
				</div>
			</div>

</c:forEach>

					<table>
						<thead>
							<tr>
								<th class="right"><a href="#" class="" style="padding-left: 65px;"><input type="submit" name="submit" value="Delete Order"></a></th>
								<th class="center"><a href="#" class=""><button class="">Pay Now</button></a></th>
								<th class="right"><a onclick="window.print();"><button class="">Print</button></a></th>
							</tr>
						</thead>
					</table>
					
						
</form>						
						


			<div class="card-footer bg-white">
				<p class="mb-0">tecsolutiononlinecomputersparepartssystem.com</p>
			</div>
		</div>
		
	</div>
	

</body>
</html>