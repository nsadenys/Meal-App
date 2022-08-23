<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">

	<link href="style.css" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="all.min.css"/>
  <script src="jquery-3.5.1.min.js"></script>
  <script src="typed.min.js"></script>
  <script src="jquery.waypoints.min.js"></script>
  <script src="owl.carousel.min.js"></script>
  <link rel="stylesheet" href="owl.carousel.min.css"/>
</head>
<body>

<div class="scroll-up-btn">
  <i class="fas fa-angle-up"></i>
</div>
<nav class="navbar">
  <div class="max-width">
    <div class="logo"><a href="#">Meal<span>App.</span></a></div>
    <ul class="menu">
      <li><a href="/home" class="menu-btn">Home</a></li>
      <li><a href="/createUser" class="menu-btn">Create User</a></li>
      <li><a href="/login" class="menu-btn">Login</a></li>
      <!-- <li><a href="#skills" class="menu-btn">Skills</a></li>-->

    </ul>
    <div class="menu-btn">
      <i class="fas fa-bars"></i>
    </div>
  </div>
</nav>

<!-- home section start -->
<section class="home" id="home">
  <div class="max-width">
    <div class="home-content">
      <div class="text-1">Hello, This is a</div>
      <div class="text-2">Meal App Website</div>
      <div class="text-3">And We deliver food<span class="typing"></span></div>
      <a href="#">Contact us</a>
    </div>
  </div>
</section>


<script src="script.js"></script>
	<!-- navbar -->
</body>
