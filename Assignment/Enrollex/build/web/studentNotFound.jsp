<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Not Found</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fc;
            margin: 0;
            padding: 40px;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .card {
            background-color: #fff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 500px;
            width: 100%;
        }

        h2 {
            color: #3201FE;
            margin-bottom: 20px;
        }

        p {
            color: #555;
            font-size: 16px;
            margin-bottom: 30px;
        }

        .btn {
            display: inline-block;
            background-color: #3201FE;
            color: white;
            padding: 12px 24px;
            margin: 10px;
            text-decoration: none;
            border-radius: 6px;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: #2400c5;
        }
    </style>
</head>
<body>
    <div class="card">
        <h2>Student Not Found</h2>
        <p>No student was found with the ID you entered. Please try again or return to the admin dashboard.</p>
        <a href="SearchEnrollment.jsp" class="btn">Try Again</a>
        <a href="adminDashboard.html" class="btn">Return to Dashboard</a>
    </div>
</body>
</html>
