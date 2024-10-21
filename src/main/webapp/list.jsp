<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Task</title>
    <style>
        /* Basic styling for body with background image */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('https://fauzul.com.my/cdn/shop/articles/to-do-list-main-463x348.png?v=1696403044');
            background-size: cover; /* Ensures the image covers the entire background */
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh; /* Ensure it takes full viewport height */
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: flex-end; /* Aligns the task container to the right */
            padding-right: 900px; /* Adds some padding from the right edge */
        }

        /* Styling for the container */
        .task-container {
            background-color: rgba(255, 255, 255, 0.9); /* Slight transparency for the form */
            padding: 20px 40px;
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
            border: 2px solid black;
        }

        h1 {
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

        /* Additional styling for buttons and forms */
        form {
            margin-bottom: 20px;
        }

        /* Responsive design for smaller screens */
        @media (max-width: 500px) {
            .task-container {
                width: 90%;
                padding: 20px;
            }
            body {
                align-items: center; /* Center the task container on small screens */
            }
        }
    </style>
</head>
<body>

    <div class="task-container">
        <h1>!! Add Task !!</h1>

        <form action="login" method="post">
            <label for="title">Title:</label>
            <input type="text" id="title" name="title" placeholder="Enter task title">
            <br><br>

            <label for="status">Status:</label>
            <input type="text" id="status" name="status" placeholder="Enter task status">
            <br><br>

            <label for="date">Date:</label>
            <input type="date" id="date" name="date">
            <br><br>

            <button type="submit">Add To-Do List</button>
        </form>

        <form action="fetch">
            <button type="submit">View all records</button>
        </form>

    </div>

</body>
</html>
