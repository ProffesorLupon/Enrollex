<%@ page import="za.ac.entity.NewStudent" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Enrollment Details</title>
    <style>
        body, h2, p {
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

        .content-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 0 0 8px 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h2 {
            margin-bottom: 20px;
            color: #333;
            text-align: center;
        }

        p {
            margin-bottom: 15px;
            font-size: 16px;
            color: #555;
        }

        strong {
            color: #000;
        }

        .button-container {
            text-align: center;
            margin-top: 30px;
        }

        .back-button {
            background-color: #3201FE;
            color: white;
            padding: 10px 25px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            cursor: pointer;
        }

        .back-button:hover {
            background-color: #2500c0;
        }
    </style>
</head>
<body>
    <div class="page-container">
        <div class="top-bar">Enrollment Details</div>
        <div class="content-container">
            <%
                NewStudent student = (NewStudent) request.getAttribute("student");
                if (student != null) {
            %>
                <h2>Student Information</h2>
                <p><strong>ID:</strong> <%= student.getId() %></p>
                <p><strong>Name:</strong> <%= student.getName() %> <%= student.getSurname() %></p>
                <p><strong>Email:</strong> <%= student.getEmail() %></p>
                <p><strong>Phone:</strong> <%= student.getPhone() %></p>
                <p><strong>Qualification:</strong> <%= student.getQualification() %></p>
                <p><strong>High School:</strong> <%= student.getHighschool() %></p>
                <p><strong>Creation Date:</strong> <%= student.getCreationDate() %></p>
            <%
                } else {
            %>
                <p>No student information available.</p>
            <%
                }
            %>

            <div class="button-container">
                <a href="adminDashboard.html" class="back-button">Back to Admin Dashboard</a>
            </div>
        </div>
    </div>
</body>
</html>
