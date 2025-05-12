<%@ page import="java.util.List" %>
<%@ page import="za.ac.entity.NewStudent" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Enrollments</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fc;
            margin: 0;
            padding: 40px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        h2 {
            color: #3201FE;
            margin-bottom: 30px;
        }

        table {
            width: 80%;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 12px 15px;
            border-bottom: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #3201FE;
            color: white;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .container {
            width: 100%;
            max-width: 1000px;
        }

        .back-button {
            margin-top: 30px;
        }

        .back-button a {
            background-color: #555;
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 5px;
            display: inline-block;
        }

        .back-button a:hover {
            background-color: #333;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>All Enrollments</h2>
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone Number</th>
                <th>Course</th>
                <th>Gender</th>
                <th>Age</th>
            </tr>
            <%
                List<NewStudent> students = (List<NewStudent>) request.getAttribute("students");
                if (students != null && !students.isEmpty()) {
                    for (NewStudent student : students) {
            %>
            <tr>
                <td><%= student.getId() %></td>
                <td><%= student.getName() %> <%= student.getSurname() %></td>
                <td><%= student.getEmail() %></td>
                <td><%= student.getPhone() %></td>
                <td><%= student.getQualification() %></td>
                <td><%= student.getGender() %></td>
                <td><%= student.getAge() %></td>
            </tr>
            <%
                    }
                } else {
            %>
            <tr>
                <td colspan="5">No enrollments found.</td>
            </tr>
            <% } %>
        </table>

        <div class="back-button">
            <a href="adminDashboard.html">Back to Admin Dashboard</a>
        </div>
    </div>
</body>
</html>
