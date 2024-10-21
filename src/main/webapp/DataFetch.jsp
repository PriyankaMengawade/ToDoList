<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Data Of TO-DO List</title>
    <style>
        /* Set background image */
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://img.freepik.com/premium-photo/modern-white-pastel-gradient-background-soft-ar-32-v-52-job-id-6bec3980a2cf4dfbae7aad489d39c9a9_941600-285403.jpg');
            background-size: cover; /* Ensures the image covers the entire background */
            background-position: center;
            background-repeat: no-repeat;
            margin: 0;
            padding: 20px;
        }

        /* Styling for the heading */
        h1 {
            text-align: center;
            color: violet;
            font-size: 28px;
            margin-bottom: 20px;
        }

        /* Styling for the table */
        table {
            width: 100%;
            border-collapse: collapse;
            background-color: rgba(255, 255, 255, 0.8); /* Slight transparency for the table */
        }

        th, td {
            padding: 15px;
            text-align: center;
            border: 2px solid black;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        td a {
            text-decoration: none;
            color: #4CAF50;
        }

        td a:hover {
            text-decoration: underline;
        }

        /* Add responsive design for smaller screens */
        @media (max-width: 768px) {
            th, td {
                padding: 10px;
            }
        }
    </style>
</head>
<body>

<h1>!! All Data Of TO-DO List !!</h1>

<table border="1" width=80%>
    <tr>
        <th>Id</th>
        <th>Title</th>
        <th>Status</th>
        <th>Date</th>
        <th>Update</th>
        <th>Delete</th>
    </tr>

    <!-- Iterate over the data using JSTL -->
    <d:forEach var="a" items="${data}">
        <tr>
            <td>${a.id}</td>
            <td>${a.title}</td>
            <td>${a.status}</td>
            <td>${a.date}</td>
            <td><a href="<d:url value='/${a.id}'/>">Update</a></td>
            <td><a href="<d:url value='Delete/${a.id}'/>">Delete</a></td>
        </tr>
    </d:forEach>

</table>

</body>
</html>
