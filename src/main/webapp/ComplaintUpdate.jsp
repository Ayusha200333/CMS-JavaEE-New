<%@ page import="org.example.cmsjavaee.dto.ComplaintDto" %>
<%@ page import="org.example.cmsjavaee.model.ComplaintModel" %><%--
  Created by IntelliJ IDEA.
  User: skc
  Date: 6/16/2025
  Time: 3:02 PM
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
    <title>Update/Delete Complaint</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous" />
    <style>
        body {
            background: linear-gradient(135deg, #d3cce3 0%, #e9e4f0 100%);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .card {
            max-width: 600px;
            margin: 5rem auto;
            border-radius: 1rem;
            box-shadow: 0 0 30px rgba(0, 0, 0, 0.1);
            animation: fadeIn 0.6s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .card-header {
            background-color: #0d6efd;
            color: white;
            text-align: center;
            font-size: 1.5rem;
            font-weight: bold;
            padding: 1.2rem;
            border-top-left-radius: 1rem;
            border-top-right-radius: 1rem;
        }

        label {
            font-weight: 600;
            color: #343a40;
        }

        input.form-control {
            border-radius: 0.5rem;
            transition: box-shadow 0.3s ease, border-color 0.3s ease;
        }

        input.form-control:focus {
            border-color: #0d6efd;
            box-shadow: 0 0 0 0.2rem rgba(13, 110, 253, 0.25);
        }

        .btn {
            padding: 0.6rem 1.5rem;
            font-weight: bold;
            border-radius: 0.5rem;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .btn-primary {
            background-color: #0d6efd;
            border: none;
        }

        .btn-primary:hover {
            background-color: #0b5ed7;
            transform: scale(1.03);
        }

        .btn-danger {
            background-color: #dc3545;
            border: none;
        }

        .btn-danger:hover {
            background-color: #b02a37;
            transform: scale(1.03);
        }

        .form-section {
            padding: 2rem;
        }

        .btn-group {
            display: flex;
            gap: 1rem;
            margin-top: 1.5rem;
        }

        @media (max-width: 576px) {
            .btn-group {
                flex-direction: column;
            }
        }
    </style>
</head>
<body>

<div class="card">
    <div class="card-header">
        Update/Delete Complaint
    </div>
    <div class="card-body form-section">

        <!-- Update Form -->
        <form action="<%=request.getContextPath()%>/update" method="post">
            <input type="hidden" name="id" value="<%= complaint.getId() %>">
            <input type="hidden" name="eid" value="<%= complaint.getE_id() %>">

            <div class="mb-3">
                <label for="description" class="form-label">Description</label>
                <input type="text" class="form-control" id="description" name="description" required
                       value="<%= complaint.getDescription() %>">
            </div>

            <div class="mb-3">
                <label for="date" class="form-label">Date</label>
                <input type="date" class="form-control" id="date" name="date" required
                       value="<%= complaint.getDate() %>">
            </div>

            <div class="btn-group">
                <button type="submit" class="btn btn-primary w-100">Update</button>

                <!-- Delete Form -->
                <form action="<%=request.getContextPath()%>/delete" method="post" class="w-100">
                    <input type="hidden" name="id" value="<%= complaint.getId() %>">
                    <input type="hidden" name="eid" value="<%= complaint.getE_id() %>">
                    <button type="submit" class="btn btn-danger w-100"
                            onclick="return confirm('Are you sure you want to delete this complaint?');">Delete</button>
                </form>
            </div>
        </form>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO"
        crossorigin="anonymous"></script>
</body>
</html>


