<%--
  Created by IntelliJ IDEA.
  User: skc
  Date: 6/16/2025
  Time: 11:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
    <link rel="stylesheet" href="style/index.css">
</head>
<body>
<form class="row g-3 m-5" method="post" action="/signup">
    <div class="col-md-6">
        <label for="name" class="form-label">Name</label>
        <input type="text" class="form-control" id="name" placeholder="name" name="name" required>
    </div>
    <div class="col-md-6">
        <label for="password" class="form-label">Password</label>
        <input type="password" class="form-control" id="password" placeholder="***" name="password" required>
    </div>
    <div class="col-12">
        <label for="email" class="form-label">Email-Address</label>
        <input type="text" class="form-control" id="email" placeholder="abc@gmail.com" name="email" required>
    </div>

    <div class="col-12">
        <button type="submit" class="btn btn-primary">Sign in</button>
    </div>
</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>

</body>
</html>
