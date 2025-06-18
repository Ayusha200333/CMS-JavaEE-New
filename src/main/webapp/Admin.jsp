<%@ page import="org.example.cmsjavaee.model.ComplaintModel" %>
<%@ page import="org.example.cmsjavaee.dto.ComplaintDto" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: skc
  Date: 6/16/2025
  Time: 2:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Complaint Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
    <style>
        body {
            background-color: #f8f9fa;
            padding: 40px;
            font-family: 'Segoe UI', sans-serif;
        }

        h1 {
            text-align: center;
            margin-bottom: 30px;
            font-weight: bold;
        }

        .table {
            background-color: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        .btn-info, .btn-danger {
            margin-right: 5px;
        }

        th {
            background-color: #343a40;
            color: white;
        }

        td, th {
            vertical-align: middle !important;
            text-align: center;
        }
    </style>
</head>
<body>

<h1>All Complaints</h1>

<div class="container">
    <table class="table table-hover">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">e_id</th>
            <th scope="col">Description</th>
            <th scope="col">Date</th>
            <th scope="col">Status</th>
            <th scope="col">Comment</th>
            <th scope="col">Actions</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<ComplaintDto> complaintDtos = new ComplaintModel().getAllComplaints(request.getServletContext());
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
                <a href="ComplaintAdmin.jsp?id=<%= complaintDto.getId() %>" class="btn btn-info btn-sm">Update</a>
                <a href="DeleteAdmin.jsp?id=<%= complaintDto.getId() %>" class="btn btn-danger btn-sm">Delete</a>
            </td>
        </tr>
        <% } %>
        </tbody>
    </table>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO"
        crossorigin="anonymous"></script>
</body>
</html>
