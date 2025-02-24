
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,javax.servlet.*,javax.servlet.http.*" %>
<%
    HttpSession session1 = request.getSession(false);
    if(session1 == null || session1.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
    }
    String username = (String) session1.getAttribute("user");
%>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
  <title>Dashboard</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>
  <style>
    body {
      background: url('images/10351119_4452774.jpg') no-repeat center center fixed;
      background-size: cover;
      backdrop-filter: blur(5px);
    }
  </style>
</head>
<body class="min-h-screen flex overflow-auto">

  <!-- Overlay (for closing menu by clicking outside) -->
  <div class="fixed inset-0 bg-black bg-opacity-50 z-40 hidden" id="overlay" onclick="toggleSidebar()"></div>

  <!-- Top Navigation Bar -->
  <div class="fixed w-full bg-black bg-opacity-80 text-white flex justify-between items-center p-4 z-50">
    <button class="text-2xl" onclick="toggleSidebar()">☰</button>
    <div class="text-lg font-bold">Welcome, <%= username %>!</div>
    <a class="bg-red-500 px-4 py-2 rounded text-white font-bold" href="LogoutServlet">Logout</a>
  </div>

  <!-- Sidebar -->
  <div class="fixed top-0 left-0 h-full w-64 bg-black bg-opacity-90 text-white p-6 transform -translate-x-full transition-transform duration-300 z-50" id="sidebar">
    <h2 class="text-2xl font-bold text-center mb-6">Dashboard</h2>
    <ul class="space-y-4">
      <li><a class="flex items-center p-2 rounded hover:bg-blue-500" href="Home.jsp"><i class="fas fa-home mr-3"></i>Home</a></li>
      <li><a class="flex items-center p-2 rounded hover:bg-blue-500" href="profile.jsp"><i class="fas fa-user mr-3"></i>Profile</a></li>
      <li><a class="flex items-center p-2 rounded hover:bg-blue-500" href="settings.jsp"><i class="fas fa-cog mr-3"></i>Settings</a></li>
      <li><a class="flex items-center p-2 rounded hover:bg-blue-500" href="analytics.jsp"><i class="fas fa-chart-line mr-3"></i>Analytics</a></li>
    </ul>
  </div>

  <!-- Main Content -->
  <div class="flex-1 p-6 mt-16">
    <h1 class="text-3xl font-bold mb-6">Dashboard Overview</h1>
    <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
      <div class="bg-white p-6 rounded-lg shadow-lg text-center">
        <h3 class="text-xl font-bold mb-2">Users</h3>
        <p class="text-lg">100+</p>
      </div>
      <div class="bg-white p-6 rounded-lg shadow-lg text-center">
        <h3 class="text-xl font-bold mb-2">Revenue</h3>
        <p class="text-lg">$10,000</p>
      </div>
      <div class="bg-white p-6 rounded-lg shadow-lg text-center">
        <h3 class="text-xl font-bold mb-2">Performance</h3>
        <p class="text-lg">85%</p>
      </div>
    </div>

    <!-- Feature Cards -->
    <div class="grid grid-cols-1 md:grid-cols-3 gap-6 mt-6">
      <div class="bg-white p-6 rounded-lg shadow-lg">
        <img class="rounded mb-4" src="https://storage.googleapis.com/a1aa/image/rm8Pb_TG_IpWaTUgRKL4QDeNTvC7yA7jU-CDifqn9Ns.jpg" alt="Feature One" width="100%" height="200"/>
        <h3 class="text-xl font-bold mb-2">Feature One</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
      </div>
      <div class="bg-white p-6 rounded-lg shadow-lg">
        <img class="rounded mb-4" src="https://storage.googleapis.com/a1aa/image/SAA_VJYUnKL-vcbF_F399qY6m3g_9MWPT-BYRqx3yxw.jpg" alt="Feature Two" width="100%" height="200"/>
        <h3 class="text-xl font-bold mb-2">Feature Two</h3>
        <p>Vestibulum ac diam sit amet quam vehicula elementum.</p>
      </div>
      <div class="bg-white p-6 rounded-lg shadow-lg">
        <img class="rounded mb-4" src="https://storage.googleapis.com/a1aa/image/Xz4zKnV7cPW7zbYCqmWZFUVq3LEPH8QjiylFR84ZGbY.jpg" alt="Feature Three" width="100%" height="200"/>
        <h3 class="text-xl font-bold mb-2">Feature Three</h3>
        <p>Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.</p>
      </div>
    </div>
  </div>

  <script>
    function toggleSidebar() {
      var sidebar = document.getElementById("sidebar");
      var overlay = document.getElementById("overlay");
      sidebar.classList.toggle("-translate-x-full");
      overlay.classList.toggle("hidden");
    }
  </script>
</body>
</html>
