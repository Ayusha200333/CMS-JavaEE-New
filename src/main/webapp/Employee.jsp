<%@ page import="org.example.cmsjavaee.model.ComplaintModel" %>
<%@ page import="org.example.cmsjavaee.dto.ComplaintDto" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: skc
  Date: 6/16/2025
  Time: 3:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My Complaints</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }

        .navbar-custom {
            background-color: #0d6efd;
        }

        .navbar-custom .nav-link {
            color: white;
        }

        .navbar-custom .nav-link:hover {
            color: #ffc107;
        }

        .table-container {
            margin-top: 40px;
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-custom p-3">
    <div class="container-fluid">
        <a class="navbar-brand text-white" href="#">CMS Dashboard</a>
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="#">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="NewComplaint.jsp?id=<%= request.getParameter("id") %>">New Complaint</a>
            </li>
        </ul>
    </div>
</nav>

<div class="container table-container">
    <h3 class="mb-4">My Complaints</h3>

    <table class="table table-hover table-bordered align-middle text-center">
        <thead class="table-dark">
        <tr>
            <th scope="col">#</th>
            <th scope="col">Employee ID</th>
            <th scope="col">Description</th>
            <th scope="col">Submitted Date</th>
            <th scope="col">Status</th>
            <th scope="col">Comment</th>
            <th scope="col">Actions</th>
        </tr>
        </thead>
        <tbody>
        <%
            String idParam = request.getParameter("id");
            if (idParam != null && !idParam.isEmpty()) {
                List<ComplaintDto> complaintDtos = new ComplaintModel().getById(request.getServletContext(), idParam);
                for (ComplaintDto complaintDto : complaintDtos) {
        %>
        <tr>
            <th scope="row"><%= complaintDto.getId() %></th>
            <td><%= complaintDto.getE_id() %></td>
            <td><%= complaintDto.getDescription() %></td>
            <td><%= complaintDto.getDate() %></td>
            <td><%= complaintDto.getStatus() %></td>
            <td><%= complaintDto.getComment() %></td>
            <td>
                <a class="btn btn-sm btn-info" href="ComplaintUpdate.jsp?id=<%= complaintDto.getId() %>">Update</a>
                <a class="btn btn-sm btn-danger" href="ComplaintDelete.jsp?id=<%= complaintDto.getId() %>">Delete</a>
            </td>
        </tr>
        <%
            }
        } else {
        %>
        <tr>
            <td colspan="7" class="text-danger">Employee ID not provided!</td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
