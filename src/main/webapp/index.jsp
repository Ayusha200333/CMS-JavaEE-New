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

        /* === Animation Keyframes === */
        @keyframes fadeInSlide {
            0% {
                opacity: 0;
                transform: translateY(30px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
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

            /* Animate on page load */
            opacity: 0;
            animation: fadeInSlide 1s ease-out forwards;
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

        h2 {
            font-size: 10px;
            background: linear-gradient(90deg, #ff6a00, #ffffff, #ee0979);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
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
    <h2>Complaint Management System</h2>
    <form action="/login" method="get">
        <div class="mb-4">
            <label for="name" class="form-label">User Name</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="Enter your name" required>
        </div>

        <div class="mb-4">
            <label for="Password" class="form-label">Password</label>
            <input type="password" class="form-control" id="Password" name="password" placeholder="••••••" required>
        </div>

        <button type="submit" class="btn btn-primary w-100">Sign In</button>
        <a href="signup.jsp" class="btn btn-secondary w-100">Sign Up</a>
    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>

</body>
</html>
