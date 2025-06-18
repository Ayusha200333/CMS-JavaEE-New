<%@ page import="org.example.cmsjavaee.dto.ComplaintDto" %>
<%@ page import="org.example.cmsjavaee.model.ComplaintModel" %><%--
  Created by IntelliJ IDEA.
  User: skc
  Date: 6/16/2025
  Time: 3:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    ComplaintDto complaint = ComplaintModel.findById(request.getServletContext(), request.getParameter("id"));
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Delete Complaint</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous" />
    <style>
        body {
            background: linear-gradient(135deg, #a1c4fd 0%, #c2e9fb 100%);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .card {
            max-width: 520px;
            margin: 5rem auto;
            border-radius: 1rem;
            overflow: hidden;
            box-shadow: 0 0 30px rgba(0, 0, 0, 0.1);
            animation: fadeIn 0.6s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: scale(0.95);
            }
            to {
                opacity: 1;
                transform: scale(1);
            }
        }

        .card-header {
            background: #dc3545;
            color: white;
            font-weight: 600;
            font-size: 1.5rem;
            padding: 1.2rem;
            text-align: center;
        }

        label {
            font-weight: 600;
            color: #343a40;
        }

        input[disabled] {
            background-color: #e9ecef;
            color: #495057;
            border-radius: 0.5rem;
        }

        button.btn-danger {
            width: 100%;
            font-weight: bold;
            padding: 0.75rem;
            font-size: 1.1rem;
            border-radius: 0.5rem;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        button.btn-danger:hover {
            background-color: #b02a37;
            transform: scale(1.03);
        }
    </style>
</head>
<body>
<div class="card shadow-lg">
    <div class="card-header">
        Delete Complaint
    </div>
    <div class="card-body">
        <form action="<%= request.getContextPath() %>/delete?id=<%= complaint.getId() %>&eid=<%= complaint.getE_id() %>" method="post"
              onsubmit="return confirm('Are you sure you want to delete this complaint?');">

            <div class="mb-3">
                <label for="description" class="form-label">Description</label>
                <input type="text" id="description" name="description" class="form-control" value="<%= complaint.getDescription() %>" disabled />
            </div>

            <div class="mb-4">
                <label for="date" class="form-label">Date</label>
                <input type="date" id="date" name="date" class="form-control" value="<%= complaint.getDate() %>" disabled />
            </div>

            <button type="submit" class="btn btn-danger">Delete Complaint</button>
        </form>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>
</body>
</html>
