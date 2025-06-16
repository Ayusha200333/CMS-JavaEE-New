<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
<%--    <link rel="stylesheet" href="style/index.css">--%>
</head>
<body>
<form class="m-5" action="/login" method="get">

    <div class="row">
        <div class="col-6">
            <div class="mb-3">
                <label for="name" class="form-label">User Name</label>
                <input type="text" class="form-control" id="name" placeholder="Enter Your Name" name="name" required>
            </div>
            <div class="mb-3">
                <label for="Password" class="form-label">Password</label>
                <input type="password" class="form-control" id="Password" placeholder="****" name="password" required>
            </div>

            <div class="col-md-4">
                <label for="inputState" class="form-label">Job-Role</label>
                <select id="inputState" class="form-select" name="user">
                    <option selected>Choose...</option>
                    <option value="admin">Admin</option>
                    <option value="employee">Employee</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary m-3">Sign-In</button>
            <a href="SignUp.jsp" type="button" class="btn btn-secondary m-3">Sign-Up</a>
        </div>



        <div class="col-6">
            <img src="assets/pngtree-gradient-fingerprint-unlock-login-computer-png-image_5044947-removebg-preview.png" alt="">
        </div>
    </div>




</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>
</body>
</html>