<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Display</title>
  <link href="style.css" rel="stylesheet" type="text/css">
  
  <link rel="stylesheet" href="all.min.css"/>
  
  <script src="jquery.waypoints.min.js"></script>
  
  <link rel="stylesheet" href="owl.carousel.min.css"/>
  
  <style type="text/css">

    .navbar {
      background: #111111;
    }
    
    body{
    background-color:lightgreen;
      color:black;
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
</section>	<!-- navbar -->
	<div class="container">
	<h1> All Food </h1>

		<form action="/foodDisp" method="get">

			Search <br/><input type="text" name="search" class="form-control" >
			<br>
			<input type="submit"
															value="Search" class="btn btn-primary" />
		</form>
		<br>

		<c:choose>
			<c:when test="${empty foods }">
				<h1>No results found.</h1>
			</c:when>
			<c:otherwise>
				<table  cellpadding="3" class="styled-table" >
					<tr>
						<td><b>ID</b></td>
						<td><b>Food name</b></td>
						<td><b>Quantity</b></td>
						<td><b>Price</b></td>
						<td><b>Category</b></td>
						<td><b>Action</b></td>
					</tr>

					<c:forEach items="${foods}" var="foods">
						<tr>
							<td>${foods.id }</td>
							<td>${foods.foodName }</td>
							<td>${foods.quantity }</td>
							<td>${foods.price }</td>
							<c:forEach items="${foods.categories}" var="Category">
							<td>${Category.category_name }</td>
							</c:forEach>
							<td><a href="/deleteFood?id=${foods.id }">Delete</a> <a href="/addToCart?id=${foods.id}&productName=${foods.foodName }&price=${foods.price }">Add To Cart</a></td>
						</tr>
					</c:forEach>
				</table>
			</c:otherwise>
		</c:choose>

	</div>
</div>
</body>

</html>
