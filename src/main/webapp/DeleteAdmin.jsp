<%@ page import="org.example.cmsjavaee.dto.ComplaintDto" %>
<%@ page import="org.example.cmsjavaee.model.ComplaintModel" %><%--
  Created by IntelliJ IDEA.
  User: skc
  Date: 6/17/2025
  Time: 11:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Delete Complaint (Admin)</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
    <style>
        body {
            background: linear-gradient(135deg, #a1c4fd 0%, #c2e9fb 100%);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .card {
            max-width: 700px;
            margin: 4rem auto;
            border-radius: 1rem;
            box-shadow: 0 0 25px rgba(0, 0, 0, 0.1);
            animation: slideFade 0.6s ease-in-out;
        }

        @keyframes slideFade {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .card-header {
            background: linear-gradient(45deg, #1e3c72, #2a5298);
            color: white;
            font-size: 1.5rem;
            font-weight: bold;
            text-align: center;
            padding: 1.2rem;
            border-top-left-radius: 1rem;
            border-top-right-radius: 1rem;
        }

        label {
            font-weight: 600;
            color: #333;
        }

        input.form-control {
            border-radius: 0.5rem;
            padding: 0.55rem 1rem;
        }

        .btn-danger {
            width: 100%;
            padding: 0.75rem;
            font-size: 1.1rem;
            border-radius: 0.5rem;
            font-weight: 600;
            transition: all 0.3s ease;
        }

        .btn-danger:hover {
            background-color: #b02a37;
            transform: scale(1.03);
        }

    </style>
</head>
<body>
<% ComplaintDto complaint = ComplaintModel.findById(request.getServletContext(), request.getParameter("id"));%>
<div class="card">
    <div class="card-header">
        Admin Delete Complaint
    </div>
    <div class="card-body">
        <form class="row g-3" action="/adminDelete?id=<%= complaint.getId()%>&eid=<%= complaint.getE_id()%>" method="post"
              onsubmit="return confirm('Are you sure you want to delete this complaint?');">

            <div class="col-md-6">
                <label for="description" class="form-label">Description</label>
                <input type="text" class="form-control" id="description" name="description" required value="<%=complaint.getDescription()%>" disabled>
            </div>

            <div class="col-md-6">
                <label for="date" class="form-label">Date</label>
                <input type="date" class="form-control" id="date" name="date" required value="<%=complaint.getDate()%>" disabled>
            </div>

            <div class="col-md-6">
                <label for="status" class="form-label">Status</label>
                <input type="text" class="form-control" id="status" name="status" required value="<%=complaint.getStatus()%>" disabled>
            </div>

            <div class="col-md-6">
                <label for="comment" class="form-label">Comment</label>
                <input type="text" class="form-control" id="comment" name="comment" required value="<%=complaint.getComment()%>" disabled>
            </div>

            <div class="col-12">
                <button class="btn btn-danger" type="submit">Delete Complaint</button>
            </div>
        </form>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO"
        crossorigin="anonymous"></script>
</body>
</html>
