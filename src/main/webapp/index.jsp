<%--<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>JSP - Hello World</title>--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">--%>
<%--&lt;%&ndash;    <link rel="stylesheet" href="style/index.css">&ndash;%&gt;--%>

<%--</head>--%>
<%--<body>--%>
<%--<form class="m-5" action="/login" method="get">--%>

<%--    <div class="row">--%>
<%--        <div class="col-6">--%>
<%--            <div class="mb-3">--%>
<%--                <label for="name" class="form-label">User Name</label>--%>
<%--                <input type="text" class="form-control" id="name" placeholder="Enter Your Name" name="name" required>--%>
<%--            </div>--%>
<%--            <div class="mb-3">--%>
<%--                <label for="Password" class="form-label">Password</label>--%>
<%--                <input type="password" class="form-control" id="Password" placeholder="****" name="password" required>--%>
<%--            </div>--%>

<%--            <div class="col-md-4">--%>
<%--                <label for="inputState" class="form-label">Job-Role</label>--%>
<%--                <select id="inputState" class="form-select" name="user">--%>
<%--                    <option selected>Choose...</option>--%>
<%--                    <option value="admin">Admin</option>--%>
<%--                    <option value="employee">Employee</option>--%>
<%--                </select>--%>
<%--            </div>--%>
<%--            <button type="submit" class="btn btn-primary m-3">SignIn</button>--%>
<%--            <a href="signup.jsp" type="button" class="btn btn-secondary m-3">SignUp</a>--%>
<%--        </div>--%>



<%--        <div class="col-6">--%>
<%--            <img src="assets/pngtree-gradient-fingerprint-unlock-login-computer-png-image_5044947-removebg-preview.png" alt="">--%>
<%--        </div>--%>
<%--    </div>--%>




<%--</form>--%>

<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>--%>
<%--</body>--%>
<%--</html>--%>





<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login | CMS</title>
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
            background: url('https://images.unsplash.com/photo-1508780709619-79562169bc64') no-repeat center center fixed;
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
            max-width: 500px;
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
            margin-bottom: 5px;
            font-weight: 600;
            font-size: 1.1rem;
        }

        .form-control,
        .form-select {
            background: rgba(255, 255, 255, 0.25);
            border: none;
            color: white;
            border-radius: 14px;
            height: 50px;
            font-size: 1.1rem;
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

        .btn-secondary {
            background: rgba(255, 255, 255, 0.3);
            color: white;
            border: none;
            border-radius: 14px;
            font-size: 1.1rem;
            font-weight: bold;
            padding: 12px 0;
        }

        .btn + .btn {
            margin-top: 12px;
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
    <h2>Welcome Back</h2>
    <form action="${pageContext.request.contextPath}/login" method="post">
        <div class="mb-4">
            <label for="name" class="form-label">User Name</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="Enter your name" required>
        </div>

        <div class="mb-4">
            <label for="Password" class="form-label">Password</label>
            <input type="password" class="form-control" id="Password" name="password" placeholder="••••••" required>
        </div>

        <div class="mb-4">
            <label for="userRole" class="form-label">Job Role</label>
            <select class="form-select" id="userRole" name="userRole" required>
                <option value="" disabled selected>Choose...</option>
                <option value="admin">Admin</option>
                <option value="employee">Employee</option>
            </select>
        </div>

        <button type="submit" class="btn btn-primary w-100">Sign In</button>
        <a href="signup.jsp" class="btn btn-secondary w-100">Sign Up</a>
    </form>
</div>

</body>
</html>
