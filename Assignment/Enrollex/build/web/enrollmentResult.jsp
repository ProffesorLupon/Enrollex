<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Enrollment Confirmation</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body, h1, p {
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
            padding: 40px 20px;
        }

        .page-container {
            width: 100%;
            max-width: 600px;
        }

        .top-bar {
            background-color: #3201FE;
            color: white;
            padding: 10px;
            text-align: center;
            border-radius: 8px 8px 0 0;
            font-size: 20px;
        }

        .result-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 0 0 8px 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .result-container h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        .confirmation-message {
            background-color: #e8f5e9;
            border-left: 4px solid #2e7d32;
            padding: 15px;
            margin-bottom: 25px;
        }

        .student-info {
            margin-bottom: 15px;
        }

        .info-label {
            font-weight: bold;
            color: #333;
            display: inline-block;
            width: 180px;
        }

        .info-value {
            color: #555;
        }

        .action-button {
            display: block;
            width: 100%;
            padding: 12px;
            background-color: #3201FE;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 20px;
            text-align: center;
            text-decoration: none;
            transition: background-color 0.3s;
        }

        .action-button:hover {
            background-color: #2705B3;
        }
    </style>
</head>
<body>
    <div class="page-container">
        <div class="top-bar">Enrollment Confirmation</div>

        <div class="result-container">
            <h1>Thank You for Enrolling!</h1>
            
            <div class="confirmation-message">
                Your enrollment has been successfully submitted. Below are your details:
            </div>
            
            <%
                // Retrieve values from servlet (request attributes)
                String name = (String) request.getAttribute("name");
                String surname = (String) request.getAttribute("surname");
                String id = (String) request.getAttribute("id");
                String email = (String) request.getAttribute("email");
                String highschool = (String) request.getAttribute("highschool");
                String phone = (String) request.getAttribute("phone");
                String qualification = (String) request.getAttribute("qualification");
            %>
            
            <div class="student-info">
                <span class="info-label">Full Name:</span>
                <span class="info-value"><%= name %> <%= surname %></span>
            </div>
            
            <div class="student-info">
                <span class="info-label">ID/Passport Number:</span>
                <span class="info-value"><%= id %></span>
            </div>
            
            <div class="student-info">
                <span class="info-label">Email:</span>
                <span class="info-value"><%= email %></span>
            </div>
            
            <div class="student-info">
                <span class="info-label">Previous High School:</span>
                <span class="info-value"><%= highschool %></span>
            </div>
            
            <div class="student-info">
                <span class="info-label">Phone Number:</span>
                <span class="info-value"><%= phone %></span>
            </div>
            
            <div class="student-info">
                <span class="info-label">Qualification:</span>
                <span class="info-value"><%= qualification %></span>
            </div>
            
            <a href="index.html" class="action-button">Return to Home</a>
        </div>
    </div>
</body>
</html>