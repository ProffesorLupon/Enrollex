<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="za.ac.entity.NewStudent"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Edit Student Page</title>
    <style>
        body, h1, label, input, select {
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
            max-width: 800px;
        }

        .top-bar {
            background-color: #3201FE;
            color: white;
            padding: 10px;
            text-align: center;
            border-radius: 8px 8px 0 0;
            font-size: 20px;
        }

        .form-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 0 0 8px 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .form-container h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #333;
        }

        input[type="text"], input[type="email"] {
            width: 100%;
            padding: 10px;
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
            margin-top: 10px;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #2705B3;
        }

        .back-button {
            display: block;
            width: 100%;
            padding: 12px;
            background-color: #999;
            color: white;
            text-align: center;
            text-decoration: none;
            border-radius: 4px;
            margin-top: 10px;
        }

        .back-button:hover {
            background-color: #777;
        }
    </style>
</head>
<body>
<%
    NewStudent student = (NewStudent) request.getAttribute("student");
    String name = student.getName();
    String surname = student.getSurname();
    String id = student.getId();
    String email = student.getEmail();
    String phone = student.getPhone();
    String qualification = student.getQualification();
%>
<form action="EditStudentEnrollment" method="POST">
    <div class="page-container">
        <div class="top-bar">Edit Student Record</div>

        <div class="form-container">
            <h1>Update Your Information</h1>

            <!-- Hidden ID field to identify the student -->
            <input type="hidden" name="id" value="<%= id %>" />

            <div class="form-group">
                <label for="name">First Name</label>
                <input type="text" name="name" value="<%= name %>" required>
            </div>

            <div class="form-group">
                <label for="surname">Surname</label>
                <input type="text" name="surname" value="<%= surname %>" required>
            </div>

            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" name="email" value="<%= email %>" required>
            </div>

            <div class="form-group">
                <label for="phone">Phone Number</label>
                <input type="text" name="phone" value="<%= phone %>" required>
            </div>

            <div class="form-group">
                <label for="qualification">Qualification</label>
                <input type="text" name="qualification" value="<%= qualification %>" required>
            </div>

            <input type="submit" value="Update">

            <a href="search_student_enrollment.jsp" class="back-button">Back to Search</a>
        </div>
    </div>
</form>
</body>
</html>
