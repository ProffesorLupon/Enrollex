<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Students by Course</title>
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

        .form-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 500px;
        }

        .form-container h2 {
            margin-bottom: 25px;
            color: #3201FE;
            text-align: center;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-size: 16px;
            color: #333;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        input[type="submit"] {
            background-color: #3201FE;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #2700cc;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>View Students by Course</h2>
        <form action="ViewByCourseServlet" method="post">
            <label for="course">Course:</label>
            <input type="text" id="course" name="course" required>
            <input type="submit" value="View">
        </form>
    </div>
</body>
</html>
