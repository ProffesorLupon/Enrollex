<%@ page import="java.util.List" %>
<%@ page import="za.ac.entity.NewStudent" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Students by Gender</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fc;
            margin: 0;
            padding: 40px;
        }

        h2 {
            color: #3201FE;
            text-align: center;
            margin-bottom: 30px;
        }

        table {
            width: 90%;
            margin: auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 14px 20px;
            text-align: left;
            border-bottom: 1px solid #e0e0e0;
        }

        th {
            background-color: #3201FE;
            color: #fff;
            text-transform: uppercase;
            font-size: 14px;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .no-data {
            text-align: center;
            padding: 20px;
            font-size: 16px;
            color: #999;
        }

        .back-button {
            background-color: #3201FE;
            color: white;
            padding: 12px 20px;
            text-align: center;
            display: block;
            width: 200px;
            margin: 20px auto;
            border-radius: 5px;
            text-decoration: none;
        }

        .back-button:hover {
            background-color: #2400c5;
        }
    </style>
</head>
<body>
    <h2>Students Enrolled by Gender</h2>

    <%
        List<NewStudent> students = (List<NewStudent>) request.getAttribute("students");
        if (students == null || students.isEmpty()) {
    %>
        <div class="no-data">No students found for the selected gender.</div>
    <%
        } else {
    %>
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Gender</th>
                <th>Age</th>
                <th>Qualification</th>
            </tr>
            <%
                for (NewStudent student : students) {
            %>
            <tr>
                <td><%= student.getId() %></td>
                <td><%= student.getName() %> <%= student.getSurname() %></td>
                <td><%= student.getEmail() %></td>
                <td><%= student.getGender() %></td>
                <td><%= student.getAge() %></td>
                <td><%= student.getQualification() %></td>
            </tr>
            <%
                }
            %>
        </table>
    <%
        }
    %>

    <a href="adminDashboard.html" class="back-button">Back to Dashboard</a>
</body>
</html>