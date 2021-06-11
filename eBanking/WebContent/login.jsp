<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="style/style.css">
    <title>Login</title>
</head>
<body>

    <div class="container">
        <div class="row">
            <div class="col-12">
                <h1 style="color: white; margin-left: 280px;">Welcome To eBanking System</h1>
            </div>
        </div>
    </div>
    <c:if test="${error!=null}" >
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-6 status">
                <h1><c:out value="${error}" ></c:out> </h1>
            </div>
        </div>
    </div>
</c:if>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-6 box">
                <form action="login" method="POST">
                    <div class="mb-3 ">
                        <label for="exampleInputEmail1" class="form-label">Enter Internet Banking Id</label>
                        <input type="number" name="id" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required>
                        <div id="emailHelp" class="form-text">We'll never share your credentials with anyone else.</div>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Password</label>
                        <input type="password" name="pass" class="form-control" id="exampleInputPassword1" required>
                    </div>
                    <a style="color: black;" href="signup.jsp">Click Here To Create Account</a> <br></br>
                    <button type="submit" class="btn btn-primary btn-block">Login</button>
                </form>
            </div>
        </div>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
<script>
    setTimeout(function() {
        $(".status").slideUp(5000);
    }, 1000);
</script>

</html>
