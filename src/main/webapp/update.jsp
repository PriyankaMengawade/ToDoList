<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Updated To-Do List</title>
    <style>
        /* Basic styling for body with background image */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiUUrua__o7xPNGntzjpkJP2H6pSdncQF6Lla3uDj9I8JkL5_R5rNX1Q6xsXPDC-m-sk8&usqp=CAU');
            background-size: cover; /* Ensures the image covers the entire background */
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh; /* Ensure it takes full viewport height */
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Styling for the container */
        .form-container {
            background-color: rgba(255, 255, 255, 0.9); /* Slight transparency */
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            width: 350px;
            border:2px solid black;
        }

        h1 {
            text-align: center;
            color: #333;
            font-size: 24px;
            margin-bottom: 20px;
        }

        label {
            font-size: 16px;
            color: #333;
            display: block;
            margin-bottom: 8px;
        }

        input[type="text"], input[type="date"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #45a049;
        }

        /* Responsive design for smaller screens */
        @media (max-width: 500px) {
            .form-container {
                width: 90%;
                padding: 20px;
            }
        }
    </style>
</head>
<body>

    <div class="form-container">
        <h1>!! Updated To-Do List !!</h1>

        <form action="/up/${data.id}" method="post">
            <input type="hidden" name="id" value="${data.id}">

            <label for="title">Title:</label>
            <input type="text" id="title" name="title" value="${data.title}">
            <br>

            <label for="status">Status:</label>
            <input type="text" id="status" name="status" value="${data.status}">
            <br>

            <label for="date">Date:</label>
            <input type="date" id="date" name="date" value="${data.date}">
            <br>

            <button type="submit">Update</button>
        </form>
    </div>

</body>
</html>
