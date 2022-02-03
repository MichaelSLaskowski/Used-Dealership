<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Huey, Louy, & Dewy">
    <meta name="generator" content="Hugo 0.88.1">
<title>Bid</title>

<link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/checkout/">
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
   <link href="form-validation.css" rel="stylesheet">

</head>


<body class="bg-light">
	<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
		<header class="masthead used dealership">
			<div class="inner">
				<h3 class="masthead-brand">Place a bid</h3>
				<!-- NAVIGATION HEADER -->
				<nav class="nav nav-masthead justify-content-center">
					<a class="nav-link active" href="/home">Home</a> <a
						class="nav-link" href="/inventory">Inventory</a> <a
						class="nav-link" href="/bid">Bid</a> <a class="nav-link"
						href="/transactions">Transactions</a>
				</nav>
			</div>

		</header>

		<main role="main" class="inner cover">
			<!--  USER REGISTRATION FORM -->
			<div class="col-md-7 col-lg-8">
				<h4 class="mb-3">Bidding Form</h4>
				<form class="needs-validation" action="/makeBid" method="post" novalidate>
					<div class="row g-3">
						<div class="col-sm-6">
							<label for="firstName" class="form-label">First name</label> <input
								type="text" class="form-control" id="firstName" placeholder=""
								value="" required name="firstName">
							<div class="invalid-feedback">Valid first name is required.
							</div>
						</div>
					</div>
					<div class="col-sm-6">
						<label for="lastName" class="form-label">Last name</label> <input
							type="text" class="form-control" id="lastName" placeholder=""
							value="" required name="lastName">
						<div class="invalid-feedback">Valid last name is required.</div>
					</div>
					
					<div class="col-sm-6">
						<label for="bidAmount" class="form-label">Bid Amount</label> <input
							type="text" class="form-control" id="offer" placeholder=""
							value="" required name="offer">
						<div class="invalid-feedback">Valid phone number is required.</div>
					</div>
					<a href="/makeBid"><button class="w-100 btn btn-primary btn-lg" type="submit">Submit</button></a>
				</form>
			</div>

		</main>

		<footer class="my-5 pt-5 text-muted text-center text-small">
			<div class="inner">
				   <p class="mb-1">&copy; 2022 Vehicles</p>
				<p>
					Cover template for <a href="https://getbootstrap.com/">Bootstrap</a>,
					by <a href="https://twitter.com/mdo">@mdo</a>.
				</p>
			</div>
		</footer>
	</div>
	    <script src="/docs/5.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

      <script src="form-validation.js"></script>
</body>
</html>