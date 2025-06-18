<%--
  Created by IntelliJ IDEA.
  User: skc
  Date: 6/17/2025
  Time: 10:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error Page</title>
    <style>
        body {
            background: #ffe6e6;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            color: #b00020;
            text-align: center;
        }

        h1 {
            font-size: 3rem;
            margin-bottom: 0.5rem;
            animation: pulse 2s infinite;
        }

        p {
            font-size: 1.25rem;
            margin-bottom: 2rem;
            color: #7a0000;
        }

        a {
            text-decoration: none;
            color: white;
            background-color: #b00020;
            padding: 12px 24px;
            border-radius: 8px;
            font-weight: 600;
            box-shadow: 0 4px 8px rgba(176, 0, 32, 0.3);
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
        }

        a:hover {
            background-color: #7a0000;
            box-shadow: 0 6px 12px rgba(122, 0, 0, 0.5);
        }

        @keyframes pulse {
            0%, 100% {
                text-shadow: 0 0 8px #b00020;
            }
            50% {
                text-shadow: 0 0 20px #ff4d4d;
            }
        }
    </style>
</head>
<body>
<h1 style="color:red;">An error occurred!</h1>
<p>Please go back and try again.</p>
<a href="index.jsp">Return to Home</a>
</body>
</html>

