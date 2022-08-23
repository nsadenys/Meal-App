<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">

  <link href="style.css" rel="stylesheet" type="text/css"> 
  
  
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
      <div class="text-3">And We deliver food.<span class="typing"></span></div>
      <a href="#">Contact us</a>
    </div>
  </div>
</section>

<!-- about section start -->
<section class="about" id="about">
  <div class="max-width">
    <h2 class="title">About us</h2>
    <div class="about-content">

      <div class="column">
        <div class="text">This is Meal App website and we deliver food.<span class="typing-2"></span></div>
        <br>
        
        <p>With the help of Meal App website, restaurants can sell or share their leftovers who need.
          Neighbors can also offer food they need or want to others for free.
          And volunteers can deliver meals to people who struggle to find adequate nutritious food.
          Meal App provides an interface between restaurant owners,
          neighbors and volunteers involved in distributing food from restaurants, neighbors  and
          will help prevent wastages food and to feed the people in need such as homeless and poor people.
          A donor(neighbor) can register on the app and generate a request to pick up the leftover food.
          A notification on it then goes to the volunteers of the neighbors who can distribute food..</p>
      </div>
    </div>
  </div>
</section>

<!-- services section start -->
<section class="services" id="services">
  <div class="max-width">
    <h2 class="title">Our services</h2>
    <div class="serv-content">
      <div class="card">
        <div class="box">
          <!--          <i class="fas fa-paint-brush"></i>-->
          <div class="text">WEB DESIGN</div>
          <p>With the help of Meal App website, restaurants can sell or share their leftovers to those in need.
            Neighbors can also offer food they don?t need or want to others for free. .</p>
        </div>
      </div>
      <div class="card">
        <div class="box">
          <!--          <i class="fas fa-chart-line"></i>-->
          <div class="text">ADVERTISING</div>
          <p>Best Website for Meal App delivery</p>
        </div>
      </div>
      <div class="card">
        <div class="box">
          <!--          <i class="fas fa-code"></i>-->
          <div class="text">WEB DESIGN</div>
          <p>Meal App provides an interface between restaurant owners,
            neighbors and volunteers involved in distributing  food from restaurants, neighbors  and
            will help prevent wastages food and to feed the people in need such as homeless and poor people.</p>
        </div>
      </div>
    </div>
  </div>
  <!--   </div> -->
</section>

<!--</div>

</div>
</section>


<!-- teams section start -->


<!-- contact section start -->
<section class="contact" id="contact">
  <div class="max-width">
    <h2 class="title">Contact us</h2>
    <div class="contact-content">
      <div class="column left">
        <div class="text">Get in Touch</div>
        <p>My name is Denys NSANZIMANA , a software developer,
          I have an idea to build a Meal App website so that I can connect restaurants, clients and people who needs food</p>
        <div class="icons">
          <div class="row">

            <div class="info">
              <div class="head">Name</div>
              <div class="sub-title">Denys NSANZIMANA</div>
            </div>
          </div>
          <div class="row">

            <div class="info">
              <div class="head">Address</div>
              <div class="sub-title">Charlotte, North Caroline 28212</div>
            </div>
          </div>
          <div class="row">

            <div class="info">
              <div class="head">Email</div>
              <div class="sub-title">nsadenys@gmail.com</div>
            </div>
          </div>
        </div>
      </div>
      <div class="column right">
        <div class="text">Message me</div>
        <form action="#">
          <div class="fields">
            <div class="field name">
              <input type="text" placeholder="Name" required>
            </div>
            <div class="field email">
              <input type="email" placeholder="Email" required>
            </div>
          </div>
          <div class="field">
            <input type="text" placeholder="Subject" required>
          </div>
          <div class="field textarea">
            <textarea cols="30" rows="10" placeholder="Message.." required></textarea>
          </div>
          <div class="button-area">
            <button type="submit">Send message</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</section>

<!-- footer section start -->
<footer>
  <span>Created By <a href="/">Denys NSANZIMANA</a>
    | <span class="far fa-copyright"></span> 2022 All rights reserved.</span>
</footer>

<script src="script.js"></script>
	<!-- navbar -->
</body>
