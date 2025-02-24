<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>LOGIN</title>
	<link rel ="stylesheet" href="">
    <style>
        /* Background styling */
        body {
            background: url('images/5418268_2832167.jpg') no-repeat center center fixed;
            background-size: cover;
            backdrop-filter: blur(8px);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
        }

        /* Card-style login form */
        .login-container {
            background: rgba(255, 255, 255, 0.2);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            backdrop-filter: blur(10px);
            width: 300px;
            text-align: center;
        }

        h2 {
            color: white;
        }

        input {
            width: 90%;
            padding: 8px;
            margin: 10px 0;
            border: none;
            border-radius: 5px;
        }

        input[type="submit"] {
            background: #007BFF;
            color: white;
            cursor: pointer;
            transition: 0.3s;
        }

        input[type="submit"]:hover {
            background: #0056b3;
        }

        a {
            color: white;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>LOGIN</h2>
        <form action="LoginServlet" method="post">
            <input type="email" name="email" placeholder="Email" required autocomplete="off"><br>
            <input type="password" name="password" placeholder="Password" required autocomplete="off"><br>
            <input type="submit" value="Login">
        </form>
        <a href="register.jsp">New user? Register here</a>
    </div>
</body>
</html>
