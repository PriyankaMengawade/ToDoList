<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <style>
        /* Basic styling for body with background image */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('https://t3.ftcdn.net/jpg/05/13/59/72/360_F_513597277_YYqrogAmgRR9ohwTUnOM784zS9eYUcSk.jpg'); /* Update this URL with your image path */
            background-size: cover; /* Ensures the image covers the entire background */
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh; /* Ensure it takes full viewport height */
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        /* Center the login form */
        .login-container {
            background-color: rgba(255, 255, 255, 0.9); /* Slight transparency for the container */
            padding: 20px 40px;
            border-radius: 8px;
            box-shadow: 3px 4px 8px rgba(0, 0, 0, 0.1);
            width: 300px;
            border:2px solid black;
        }

        /* Styling for form elements */
        h1 {
            color: #333;
            font-size: 24px;
            text-align: center;
            margin-top: 0;
        }

        label {
            font-size: 16px;
            color: #333;
            display: block;
            margin-bottom: 8px;
        }

        input[type="text"], input[type="password"] {
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
            .login-container {
                width: 90%;
                padding: 20px;
            }
        }

        /* Additional styling for the layout */
        header {
            text-align: center;
            padding: 20px 0;
        }

        footer {
            text-align: center;
        }
    </style>
</head>
<body>
<div class="login-container">
    <h1>!! Login !!</h1>    
        <form action="login">
            <label for="email">Email:</label>
            <input type="text" id="email" name="email" placeholder="Enter your email">
            <br><br>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" placeholder="Enter your password">
            <br><br>

            <button type="submit">Login</button>
        </form>
    </div>
</body>
</html>
