<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="utf-8">
<title>Inventory</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/4.4/examples/cover/">

<!-- Bootstrap core CSS -->
<link
	href="https://getbootstrap.com/docs/4.4/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">


<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>
<!-- Custom styles for this template -->
<link href="cover.css" rel="stylesheet">
</head>


<body class="text-center">
	<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">


		<header class="masthead used deealership">
			<div class="inner">
				<h3 class="masthead-brand">Used Dealership Inventory</h3>
				<nav class="nav nav-masthead justify-content-center">
					<a class="nav-link active" href="/home">Home</a> <a
						class="nav-link" href="/inventory">Inventory</a> <a
						class="nav-link" href="/bid">Bid</a> <a class="nav-link"
						href="/transactions">Transactions</a>
				</nav>
			</div>
			<div class="d-flex align-items-center">
				<form action="/searchByModel" method="post"
						class="w-100 me-3"
					wtx-context="28EEEB93-0A9C-49BC-838C-F4F0D31D8E44">
					<input type="text" name="model" class="form-control"
						placeholder="Search by model" aria-label="Search"
						wtx-context="8D23906F-2D78-44AE-88D3-15EF6C68593A"> 
					<a	href="/searchByModel"><button type="submit"
					class="btn btn-primary">Search</button></a>
				</form>

			</div>
		</header>

		<main role="main" class="inner cover">

			<h2 class="cover-heading">Vehicle Inventory</h2>
			<div class="d-grid gap-2">
				<a href="/addVehicle"><button type="submit" formtarget="_blank"
						class="btn btn-primary">Add to Inventory</button> </a>
			</div>


			<p class="lead"></p>
			<table class="table table-hover">
				<thead class="table-light">
					<tr>
						<th scope="col">VIN</th>
						<th scope="col">Manufacturer</th>
						<th scope="col">Model</th>
						<th scope="col">Odometer</th>
						<th scope="col">Price</th>
						<th scope="col">Dealer Date of Purchase</th>
						<th scope="col">Description</th>
						<th scope="col">Link</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${vehicles}" var="vehicle">
						<!--use java field names from vehicle.java -->
						<c:set var="fmtPrice" value="${vehicle.price}" />
						<c:set var="odoMiles" value="${vehicle.odometer }" />
						<tr>
							<td>${vehicle.vin}</td>
							<td>${vehicle.manufacturerName}</td>
							<td>${vehicle.model}</td>
							<td><fmt:formatNumber value="${odoMiles}" type="number"
									groupingUsed="true" /></td>
							<td><fmt:formatNumber value="${fmtPrice}" type="currency" /></td>
							<td>${vehicle.dopDealer}</td>
							<td>${vehicle.carDescription}</td>
							<td><button>Details</button></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

		</main>

		<footer class="mastfoot used dealership">
			<div class="inner">
				<p>
					Cover template for <a href="https://getbootstrap.com/">Bootstrap</a>,
					by <a href="https://twitter.com/mdo">@mdo</a>.
				</p>
			</div>
		</footer>
	</div>


</body>

</html>