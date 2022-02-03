<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="utf-8">
<title>Home</title>

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
		<header class="masthead used dealership">
			<div class="inner">
				<h3 class="masthead-brand">Used Dealership</h3>
				<nav class="nav nav-masthead justify-content-center">
					<a class="nav-link active" href="/home">Home</a> <a
						class="nav-link" href="/inventory">Inventory</a> <a
						class="nav-link" href="/bid">Bid</a> <a class="nav-link"
						href="/transactions">Transactions</a>
				</nav>
			</div>
		</header>

		<main role="main" class="inner cover">


			<form:form action="/addVehicle" method="post"
				modelAttribute="vehicle">

				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputVin">VIN</label>
						<form:input path="vin" type="text" class="form-control"
							id="inputVin" />
					</div>

					<div class="form-group col-md-6">
						<label for="inputManufacturerName">Manufacturer</label>
						<form:input path="manufacturerName" type="text" class="form-control"
							id="inputManufacturerName" />
					</div>
				</div>


				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputModel">Model</label>
						<form:input path="model" type="text" class="form-control" 
							id="inputModel"/>
					</div>
					
				</div>

				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputCarDescription">Description</label>
						<form:input path="carDescription" type="text" class="form-control"
							id="inputCarDescription" />
					</div>
				</div>

				<div class="form-row">
					<div class="form-group col-md-6">
							<label for="inputOdometer">Odometer (miles)</label>
							<form:input path="odometer" type="text" class="form-control" 
								id="inputOdometer"/>
					</div>
					
				</div>
				
<!-- type mismatch string to date -->
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputDopDealer">Date of Purchase (dealer)</label>
						<form:input path="dopDealer" type="text" 
							placeholder="YYYY-MM-DD" class="form-control"
							id="inputDopDealer" />
					</div>

				</div>


				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputPrice">Price</label>
						<form:input path="price" type="text" class="form-control"
							id="inputPrice" />
					</div>

				</div>

				<div class="mb-3">
					<label for="formFile" class="form-label">Upload a vehicle
						image</label> <input class="form-control" type="file" id="formFile">

				</div>
				<div class="d-grid gap-2">
					<button type="submit" class="btn btn-primary">Add to
						INVENTORY</button>

				</div>

			</form:form>


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