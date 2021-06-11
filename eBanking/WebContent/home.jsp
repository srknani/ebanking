<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="style/style.css">
<title>Home</title>
</head>
<body>

	<div class="container-fluid">
		<div class="row justify-content-center">
			<div class="col-12 align-self-center ">
				<nav class="navbar navbar-expand-lg  navbar-dark border1"
					style="background-color: #3498db; border-radius: 10px;">
					<div class="container-fluid">
						<img src="style/logo.png" alt="logo">
						<button class="navbar-toggler" type="button"
							data-bs-toggle="collapse"
							data-bs-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarNav">
							<ul class="navbar-nav ">
								<li class="nav-item "><a class="nav-link navbarofhome"
									aria-current="page" href="view?id=${sessionScope.id}">View
										Account Details</a></li>
								<li class="nav-item"><a class="nav-link navbarofhome"
									href="update">Update</a></li>
								<li class="nav-item"><a class="nav-link navbarofhome"
									href="logout">
										<button type="button" class="btn btn-warning">Logout</button>
								</a></li>

							</ul>
						</div>
						<c:if test="${name!=null}">
							<h2 id="daily">
								<c:out value="Welcome ${name}"></c:out>
							</h2>
						</c:if>
					</div>

				</nav>

			</div>
		</div>
	</div>
	<c:if test="${status!=null }">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-8 status">
					<h1>
						<c:out value="${status}"></c:out>
					</h1>
				</div>
			</div>
		</div>
	</c:if>
	<c:if test="${userInfo!=null}">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-6 ">
					<table class="table tablecontent">
						<tbody>
							<tr>
								<th scope="row">Full Name</th>
								<td><c:out value="${userInfo.fname}"></c:out></td>

							</tr>
							<tr>
								<th scope="row">Gender</th>
								<td><c:out value="${userInfo.gender}"></c:out></td>

							</tr>
							<tr>
								<th scope="row">Mobile Number</th>
								<td><c:out value="${userInfo.mobileNum}"></c:out></td>

							</tr>
							<tr>
								<th scope="row">Account Number</th>
								<td><c:out value="${userInfo.accNum}"></c:out></td>

							</tr>
							<tr>
								<th scope="row">IFSC Code</th>
								<td><c:out value="${userInfo.ifsc}"></c:out></td>

							</tr>
							<tr>
								<th scope="row">Account Type</th>
								<td><c:out value="${userInfo.accType}"></c:out></td>
							</tr>
						</tbody>
					</table>
					<a
						href="update?id=${userInfo.accNum}&fname=${userInfo.fname}&ifsc=${userInfo.ifsc}&mobNum=${userInfo.mobileNum}"><button
							type="button" class="btn btn-danger editbtn">Edit</button></a>
				</div>
			</div>
		</div>
	</c:if>
</body>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
<script>
	setTimeout(function() {
		$(".status").slideUp(5000);
	}, 1000);
</script>

</html>