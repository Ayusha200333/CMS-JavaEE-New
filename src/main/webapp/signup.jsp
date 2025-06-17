<%--
  Created by IntelliJ IDEA.
  User: skc
  Date: 6/16/2025
  Time: 11:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">--%>
<%--    <link rel="stylesheet" href="style/index.css">--%>
<%--</head>--%>
<%--<body>--%>
<%--<form class="row g-3 m-5" method="post" action="/signup">--%>
<%--    <div class="col-md-6">--%>
<%--        <label for="name" class="form-label">Name</label>--%>
<%--        <input type="text" class="form-control" id="name" placeholder="name" name="name" required>--%>
<%--    </div>--%>
<%--    <div class="col-md-6">--%>
<%--        <label for="password" class="form-label">Password</label>--%>
<%--        <input type="password" class="form-control" id="password" placeholder="***" name="password" required>--%>
<%--    </div>--%>
<%--    <div class="col-12">--%>
<%--        <label for="email" class="form-label">Email-Address</label>--%>
<%--        <input type="text" class="form-control" id="email" placeholder="abc@gmail.com" name="email" required>--%>
<%--    </div>--%>

<%--    <div class="col-12">--%>
<%--        <button type="submit" class="btn btn-primary">Sign in</button>--%>
<%--    </div>--%>
<%--</form>--%>

<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>--%>

<%--</body>--%>
<%--</html>--%>





<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sign Up | CMS</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap');

        * {
            font-family: 'Poppins', sans-serif;
            box-sizing: border-box;
        }

        html, body {
            height: 100%;
            margin: 0;
        }

        body {
            display: flex;
            align-items: center;
            justify-content: center;
            background: url('https://images.unsplash.com/photo-1531988042231-d39a9cc12a9a?auto=format&fit=crop&w=1350&q=80') no-repeat center center fixed;
            background-size: cover;
            overflow: hidden;
            position: relative;
        }

        body::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            height: 100%;
            width: 100%;
            background: rgba(0, 0, 0, 0.55);
            z-index: 0;
        }

        .glass-card {
            position: relative;
            z-index: 1;
            background: rgba(255, 255, 255, 0.12);
            border-radius: 20px;
            padding: 50px 40px;
            width: 100%;
            max-width: 600px;
            box-shadow: 0 8px 32px rgba(31, 38, 135, 0.37);
            backdrop-filter: blur(14px);
            -webkit-backdrop-filter: blur(14px);
            border: 1px solid rgba(255, 255, 255, 0.18);
            color: white;
        }

        .glass-card h2 {
            text-align: center;
            margin-bottom: 30px;
            font-size: 2.2rem;
            font-weight: 700;
        }

        label {
            font-weight: 600;
            font-size: 1.1rem;
        }

        .form-control {
            background: rgba(255, 255, 255, 0.25);
            border: none;
            color: white;
            border-radius: 14px;
            height: 50px;
            font-size: 1.05rem;
            font-weight: 500;
            padding-left: 15px;
        }

        .form-control::placeholder {
            color: rgba(255, 255, 255, 0.7);
        }

        .btn-primary {
            background: linear-gradient(135deg, #00c6ff, #0072ff);
            border: none;
            border-radius: 14px;
            font-size: 1.1rem;
            font-weight: bold;
            padding: 12px 0;
        }

        option {
            color: black;
        }

        @media screen and (max-width: 576px) {
            .glass-card {
                padding: 30px 20px;
            }
        }
    </style>
</head>
<body>

<div class="glass-card">
    <h2>Create Account</h2>
    <form class="row g-3" method="post" action="/signup">
        <div class="col-md-6">
            <label for="name" class="form-label">Name</label>
            <input type="text" class="form-control" id="name" placeholder="Your full name" name="name" required>
        </div>
        <div class="col-md-6">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" id="password" placeholder="••••••••" name="password" required>
        </div>
        <div class="col-12">
            <label for="email" class="form-label">Email Address</label>
            <input type="email" class="form-control" id="email" placeholder="abc@example.com" name="email" required>
        </div>

        <div class="col-12">
            <button type="submit" class="btn btn-primary w-100 mt-3">Sign Up</button>
        </div>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
