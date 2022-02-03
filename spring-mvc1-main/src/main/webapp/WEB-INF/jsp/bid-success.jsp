<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="utf-8">
<title>Success</title>

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
		<nav class="nav nav-masthead justify-content-center">
			<a class="nav-link active" href="/home">Home</a> 
			<a class="nav-link" href="/inventory">Inventory</a> 
			<a class="nav-link" href="/bid">Bid</a> 
			<a class="nav-link" href="/transactions">Transactions</a>
		</nav>
	</div>
</header>

	<main role="main" class="inner cover">

<!-- Custom styles for this template 
	//TODO add table
	<h1 class="cover-heading">Login Successful</h1>
	<p class = "lead">Welcome back ${loggedInStudent.firstName}
		${loggedInStudent.lastName}! </p>
-->

	<h1 class="cover-heading">Your bid was successful.</h1>
	
	</main>

		<footer class="my-5 pt-5 text-muted text-center text-small">
			<div class="inner">
				   <p class="mb-1">&copy; 2022 POJO's Vehicles</p>
				<p>
					Cover template for <a href="https://getbootstrap.com/">Bootstrap</a>,
					by <a href="https://twitter.com/mdo">@mdo</a>.
				</p>
			</div>
		</footer>
	</div>


</body>

</html>