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
    <title>Update</title>
</head>
<body>
<div class="container">
        <div class="row">
            <div class="col-12">
                <h1 style="color: white; margin-left: 280px;">Welcome To eBanking System</h1>
            </div>
        </div>
    </div>
    <c:if test="${status!=null}">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-6 status">
                <h1><c:out value="${status}"></c:out> </h1>
            </div>
        </div>
    </div>
    </c:if>


    <div class="container">
         <form action="updateServlet" name="accountForm" method="POST" onsubmit="return validateUpdate()">
            <div class="row addrow justify-content-between">
                <div class="col-5">
                    <div class="mb-3">
                        <strong><label for="exampleFormControlInput1" class="form-label">Account Holder Full Name</label></strong>
                        <input type="text" class="form-control" id="exampleFormControlInput1"  placeholder="Ex: Manindhar Singh" name="fullname" value="${param.fname}" required>
                    </div>
                    <div class="mb-3">
                        <strong>  <label for="exampleFormControlTextarea1" class="form-label">Bank Account Number</label></strong>
                        <input type="number" class="form-control" id="exampleFormControlInput1" placeholder="Ex: HDFC123456" required readonly="readonly" value="${sessionScope.id}" name="account">
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="flexRadioDefault" value="male" id="flexRadioDefault1">
                        <label class="form-check-label" for="flexRadioDefault1">
                        Male
                    </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="flexRadioDefault" value="female" id="flexRadioDefault2">
                        <label class="form-check-label" for="flexRadioDefault2">
                        Female
                    </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="flexRadioDefault" value="other"  id="flexRadioDefault3">
                        <label class="form-check-label" for="flexRadioDefault2">
                        Other
                    </label>
                    </div>
                </div>
                <div class="col-5">
                    <div class="mb-3">
                        <strong><label for="exampleFormControlInput1" class="form-label">IFSC CODE</label></strong>
                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Ex: HDFC123456" value="${param.ifsc}" required name="ifsc">
                    </div>
                    <div class="mb-3">
                        <strong>  <label for="exampleFormControlTextarea1" class="form-label">Mobile Number</label></strong>
                        <input type="number" class="form-control" id="exampleFormControlInput1" placeholder="89********" required value="${param.mobNum}" name="num">
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="type" value="Savings" id="flexRadioDefault1">
                        <label class="form-check-label" for="flexRadioDefault1">
                        Savings
                    </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="type" value="Current" id="flexRadioDefault2">
                        <label class="form-check-label" for="flexRadioDefault2">
                        Current
                    </label>
                    </div>
                    <br/>
                    <input class="btn btn-success" type="submit" value="Update"/>
                </div>
            </div>
            </form>
    </div>
    
 


</body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js "></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js "></script>
<script src="https://code.jquery.com/jquery-3.5.0.js "></script>
<script>
    setTimeout(function() {
        $(".status ").slideUp(5000);
    }, 1000);
</script>
<script src="javaScript.js"></script>
</html>