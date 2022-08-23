<%@ page import="lombok.var" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		 pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Checkout</title>
  <link href="style.css" rel="stylesheet" type="text/css">
  <script src="jquery.waypoints.min.js"></script>
  
  <style type="text/css">

    .navbar {
      background: #111111;
    }

    input{
      width: 20%;
      padding: 12px 20px;
      margin: 8px 0;
      display: inline-block;
      border: 1px solid #ccc;
      box-sizing: border-box;
    }

    .styled-table {
      border-collapse: collapse;
      margin: 25px 0;
      font-size: 0.9em;
      font-family: sans-serif;
      min-width: 400px;
      box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
    }


    .styled-table thead tr {
      background-color: #009879;
      color: #ffffff;
      text-align: left;
    }
    .styled-table th,
    .styled-table td {
      padding: 12px 15px;
    }

    .styled-table tbody tr {
      border-bottom: 1px solid #dddddd;
    }

    .styled-table tbody tr:nth-of-type(even) {
      background-color: #f3f3f3;
    }

    .styled-table tbody tr:last-of-type {
      border-bottom: 2px solid #009879;
    }

body{
    background-color:lightblue;
      color:black;
      }

  </style>
</head>
<!--  navbar   -->
<body>
<div class="scroll-up-btn">
  <i class="fas fa-angle-up"></i>
</div>
<nav class="navbar">
  <div class="max-width">
    <div class="logo"><a href="#">Meal<span>App.</span></a></div>
    <ul class="menu">
      <li><a href="/home" class="menu-btn">Home</a></li>
      <li ><a class="menu-btn" href="/food">Add Food</a></li>
      <li ><a class="menu-btn" href="/foodEdit">Edit Food</a></li>
      <li ><a class="menu-btn" href="/foodDisplay">all Food</a></li>
      <li ><a class="menu-btn" href="/categoryDisplay">all Category</a></li>
      <li ><a class="menu-btn" href="/cartDisplay">View Cart</a></li>

      <li ><a class="menu-btn" href="/logout">Logout</a>
    </ul>
    <div class="menu-btn">
      <i class="fas fa-bars"></i>
    </div>
  </div>
</nav>
<!-- home section start -->
<section >
</section>
	<!-- navbar -->
	<div class="container">
	<h1> Checkout </h1>


		<div class="row">

      <div class="col-lg-6">
        <div class="container ">
          <h4> Cart </h4>
          <br>
          <c:choose>
            <c:when test="${empty carts }">
              <h1>Please Add Products To Cart.</h1>
            </c:when>
            <c:otherwise>
              <table border="1" cellpadding="3" class="styled-table">
                <tr>
                  <td><b>ID</b></td>
                  <td><b>Food name</b></td>
                  <td><b>Price</b></td>
                  <td><b>Quantity</b></td>
                  <td><b>Amount</b></td>
                  <td><b>Action</b></td>
                </tr>

                <c:set var="total" value="0"></c:set>
                <c:set var="totalitems" value="0"></c:set>
                <c:forEach items="${carts}" var="carts">
                  <c:set var="total" value="${total + carts.price * carts.quantity }"></c:set>
                  <c:set var="totalitems" value="${totalitems+1 }"></c:set>
                  <tr>

                    <td>${carts.id }</td>
                    <td>${carts.productName }</td>
                    <td>${carts.price }</td>
                    <td><form method="get" action="/editCart"><input type="hidden" name="id" value="${carts.id }">  <input type="number" name="quentity" value="${carts.quantity }" style="width: 100px" > <input type="hidden" name="productName" value="${carts.productName }" > <input type="hidden" name="price" value="${carts.price }" > <input type="submit" value="Edit" style="width: 100px" > </form></td>
                    <td>${carts.price * carts.quantity }</td>

                    <td><a href="/deleteCart?id=${carts.id }">Delete</a> </td>
                  </tr>
                </c:forEach>
                <tr style="border: 1px solid black">
                  <td colspan="4"  align="right">Total Items:</td>
                  <td>${totalitems }</td>
                </tr>
                <tr style="border: 1px solid black">
                  <td colspan="4"  align="right">Shipping:</td>
                  <td>Free</td>
                </tr>
                <tr style="border: 1px solid black">
                  <td colspan="4"  align="right">Taxes:</td>
                  <td>0</td>
                </tr>
                <tr style="border: 1px solid black">
                  <td colspan="4"  align="right">Total Amount:</td>
                  <td>${total }</td>
                </tr>
              </table>

            </c:otherwise>
          </c:choose>

          <br>
          <br>

          <h4> Shipping & Delivery </h4>
          <br> 
          <p>Orders are delivered on business days (Monday-Friday) and Sunday excluding public holidays.</p>
        </div>
      </div>
			<div class="col-6">
				<div class="container">
				<form method="post" action=""
					  enctype="multipart/form-data">

					<h4>Enter Shipping Details</h4>
					
					<br>
					
					<c:forEach var="error" items="${errors}">
					<span style='color: red'>${error}</span>
					<br>
					</c:forEach>

					<div class="mb-3">
						<label for="formGroupExampleInput1" class="form-label">
							 First Name </label> <br/> <input type="text" class="form-control"
														 id="fexampleFormControlInput1" name="productName"
														 value="${form.productName }" />
						<c:forEach items="${errorFields}" var="errorField">
							<c:if test='${errorField.getField().equals("productName") }'>
								<br>
								<span style='color: red'>${errorField.defaultMessage}</span>

							</c:if>
						</c:forEach>
					</div>

					<div class="mb-3">
						<label for="formGroupExampleInput1" class="form-label">
               Last Name </label> <br/> <input type="text" class="form-control"
													 id="fexampleFormControlInput1" name="quantity"
													 value="${form.quantity }" />
						<c:forEach items="${errorFields}" var="errorField">
							<c:if test='${errorField.getField().equals("quantity") }'>
								<br>
								<span style='color: red'>${errorField.defaultMessage}</span>

							</c:if>
						</c:forEach>
					</div>

			<!--  		<div class="mb-3">
						<label for="formGroupExampleInput1" class="form-label">
							Postal Address </label> <br/> <input type="number" class="form-control"
												  id="fexampleFormControlInput1" name="price"
												  value="${form.price }" />
						<c:forEach items="${errorFields}" var="errorField">
							<c:if test='${errorField.getField().equals("price") }'>
								<br>
								<span style='color: red'>${errorField.defaultMessage}</span>

							</c:if>
						</c:forEach>
					</div>
-->
			 		<div class="mb-3">
						<label for="formGroupExampleInput1" class="form-label">
							Street Address </label> <br/> <input type="text" class="form-control"
													 id="fexampleFormControlInput1" name="category"
													 value="${form.category }" />
						<c:forEach items="${errorFields}" var="errorField">
							<c:if test='${errorField.getField().equals("category") }'>
								<br>
								<span style='color: red'>${errorField.defaultMessage}</span>

							</c:if>
						</c:forEach>
					</div>
					
					<div class="mb-3">
						<label for="formGroupExampleInput1" class="form-label">
							City </label> <br/> <input type="text" class="form-control"
														   id="fexampleFormControlInput1" name="category"
														   value="${form.category }" />
						<c:forEach items="${errorFields}" var="errorField">
							<c:if test='${errorField.getField().equals("category") }'>
								<br>
								<span style='color: red'>${errorField.defaultMessage}</span>

							</c:if>
						</c:forEach>
					</div>
					
					
					<div class="mb-3">
						<label for="formGroupExampleInput1" class="form-label">
							State </label> <br/> <input type="text" class="form-control"
														   id="fexampleFormControlInput1" name="category"
														   value="${form.category }" />
						<c:forEach items="${errorFields}" var="errorField">
							<c:if test='${errorField.getField().equals("category") }'>
								<br>
								<span style='color: red'>${errorField.defaultMessage}</span>

							</c:if>
						</c:forEach>
					</div>
					
					
					
					<div class="mb-3">
						<label for="formGroupExampleInput1" class="form-label">
							Zipcode </label> <br/> <input type="number" class="form-control"
												  id="fexampleFormControlInput1" name="price"
												  value="${form.price }" />
						<c:forEach items="${errorFields}" var="errorField">
							<c:if test='${errorField.getField().equals("price") }'>
								<br>
								<span style='color: red'>${errorField.defaultMessage}</span>

							</c:if>
						</c:forEach>
					</div>
					
					

					<div class="mb-3">
						<label for="formGroupExampleInput1" class="form-label">
							Email </label> <br/> <input type="text" class="form-control"
													id="fexampleFormControlInput1" name="category"
													value="${form.category }" />
						<c:forEach items="${errorFields}" var="errorField">
							<c:if test='${errorField.getField().equals("category") }'>
								<br>
								<span style='color: red'>${errorField.defaultMessage}</span>

							</c:if>
						</c:forEach>
					</div>

          <div class="mb-3">
            <label for="formGroupExampleInput1" class="form-label">
              Phone </label> <br/> <input type="text" class="form-control"
                                          id="fexampleFormControlInput1" name="category"
                                          value="${form.category }" />
            <c:forEach items="${errorFields}" var="errorField">
              <c:if test='${errorField.getField().equals("category") }'>
                <br>
                <span style='color: red'>${errorField.defaultMessage}</span>

              </c:if>
            </c:forEach>
          </div>

					<div>
						<button type="submit" value="submit" class="btn btn-primary">Place Order</button>
					</div>


			</form>
				</div>
			</div>

		</div>
	</div>
</div>
<br/>
</body>

</html>
