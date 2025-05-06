<%-- 
    Document   : forgotPassword
    Created on : 06 May 2025, 22:33:44
    Author     : shots
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Forgot Password - Enrollex</title>
    <style>
        body, h1, input, a {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fc;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .forgot-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 320px;
            text-align: center;
        }

        .forgot-container h1 {
            margin-bottom: 20px;
            color: #333;
        }

        .forgot-container input[type="email"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 4px;
            border: 1px solid #ccc;
            font-size: 16px;
        }

        .forgot-container input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #3201FE;
            border: none;
            border-radius: 4px;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .forgot-container input[type="submit"]:hover {
            background-color: #2705B3;
        }

        .forgot-container .back-to-login {
            margin-top: 15px;
            font-size: 14px;
        }

        .forgot-container a {
            color: #3201FE;
            text-decoration: none;
        }

        .forgot-container a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="forgot-container">
    <h1>Forgot Password</h1>
    <p>Please enter your email address to receive instructions on resetting your password</p>
    <form action="forgotPasswordServlet" method="post">
        <input type="email" name="email" placeholder="enrollex@gmail.com" required>
        <input type="submit" value="Send Reset Link">
    </form>
    <div class="back-to-login">
        <a href="index.html">Back to Login</a>
    </div>
</div>

</body>
</html>
