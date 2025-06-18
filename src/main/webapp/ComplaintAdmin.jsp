<%@ page import="org.example.cmsjavaee.dto.ComplaintDto" %>
<%@ page import="org.example.cmsjavaee.model.ComplaintModel" %><%--
  Created by IntelliJ IDEA.
  User: skc
  Date: 6/17/2025
  Time: 10:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String idParam = request.getParameter("id");
    ComplaintDto complaint = null;

    if (idParam != null && !idParam.isEmpty()) {
        try {
            complaint = ComplaintModel.findById(request.getServletContext(), idParam);
        } catch (Exception e) {
%>
<div class="alert alert-danger">Error retrieving complaint: <%= e.getMessage() %></div>
<%
        return;
    }
} else {
%>
<div class="alert alert-warning">Invalid or missing complaint ID.</div>
<%
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Complaint (Admin)</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">

    <style>
        body {
            background: linear-gradient(135deg, #d3cce3 0%, #e9e4f0 100%);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        .form-container {
            background-color: #ffffff;
            padding: 2.5rem;
            border-radius: 1rem;
            box-shadow: 0 12px 35px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 800px;
            animation: fadeSlideIn 0.6s ease-in-out;
        }

        @keyframes fadeSlideIn {
            from {
                opacity: 0;
                transform: translateY(40px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        label {
            font-weight: 600;
            color: #333;
        }

        input.form-control {
            border-radius: 0.5rem;
            padding: 0.6rem 1rem;
            transition: all 0.3s ease;
        }

        input.form-control:focus {
            border-color: #6610f2;
            box-shadow: 0 0 0 0.2rem rgba(102, 16, 242, 0.25);
        }

        .btn-primary {
            padding: 0.7rem 1.8rem;
            font-size: 1rem;
            font-weight: 600;
            border-radius: 0.5rem;
            transition: all 0.3s ease;
        }

        .btn-primary:hover {
            background-color: #520dc2;
            transform: scale(1.02);
        }

        .form-title {
            font-size: 1.8rem;
            font-weight: bold;
            margin-bottom: 1.5rem;
            color: #520dc2;
            text-align: center;
        }
    </style>
</head>
<body>

<div class="form-container">
    <div class="form-title">Update Complaint</div>

    <form class="row g-3" action="/admin?id=<%= complaint.getId() %>&eid=<%= complaint.getE_id() %>" method="post">
        <div class="col-md-6">
            <label for="description" class="form-label">Description</label>
            <input type="text" class="form-control" id="description" name="description" required value="<%= complaint.getDescription() %>">
        </div>
        <div class="col-md-6">
            <label for="date" class="form-label">Date</label>
            <input type="date" class="form-control" id="date" name="date" required value="<%= complaint.getDate() %>">
        </div>
        <div class="col-md-6">
            <label for="status" class="form-label">Status</label>
            <input type="text" class="form-control" id="status" name="status" required value="<%= complaint.getStatus() %>">
        </div>
        <div class="col-md-6">
            <label for="comment" class="form-label">Comment</label>
            <input type="text" class="form-control" id="comment" name="comment" required value="<%= complaint.getComment() %>">
        </div>
        <div class="col-12 text-end">
            <button class="btn btn-primary" type="submit">Update Complaint</button>
        </div>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO"
        crossorigin="anonymous"></script>
</body>
</html>