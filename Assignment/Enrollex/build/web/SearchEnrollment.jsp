<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Enrollment</title>
    <style>
        body, h2, label, input {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fc;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            min-height: 100vh;
            padding: 40px 20px;
        }

        .page-container {
            width: 100%;
            max-width: 600px;
        }

        .top-bar {
            background-color: #3201FE;
            color: white;
            padding: 15px;
            text-align: center;
            font-size: 22px;
            border-radius: 8px 8px 0 0;
        }

        .form-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 0 0 8px 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
            color: #333;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #3201FE;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #2705B3;
        }
    </style>
</head>
<body>
    <div class="page-container">
        <div class="top-bar">Search Enrollment</div>
        <div class="form-container">
            <h2>Find a Student by ID</h2>
            <form action="SearchEnrollmentServlet" method="post">
                <label for="studentId">Student ID:</label>
                <input type="text" id="studentId" name="studentId" required>
                <input type="submit" value="Search">
            </form>
        </div>
    </div>
</body>
</html>
