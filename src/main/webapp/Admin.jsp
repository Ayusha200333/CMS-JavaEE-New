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
<%--        body {--%>
<%--            background-color: #f8f9fa;--%>
<%--            padding: 40px;--%>
<%--            font-family: 'Segoe UI', sans-serif;--%>
<%--        }--%>

<%--        h1 {--%>
<%--            text-align: center;--%>
<%--            margin-bottom: 30px;--%>
<%--            font-weight: bold;--%>
<%--        }--%>

<%--        .table {--%>
<%--            background-color: white;--%>
<%--            border-radius: 10px;--%>
<%--            overflow: hidden;--%>
<%--            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);--%>
<%--        }--%>

<%--        .btn-info, .btn-danger {--%>
<%--            margin-right: 5px;--%>
<%--        }--%>

<%--        th {--%>
<%--            background-color: #343a40;--%>
<%--            color: white;--%>
<%--        }--%>

<%--        td, th {--%>
<%--            vertical-align: middle !important;--%>
<%--            text-align: center;--%>
<%--        }--%>
<%--    </style>--%>
    body {
    background: linear-gradient(135deg, #e0eafc, #cfdef3);
    padding: 40px 20px;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    min-height: 100vh;
    display: flex;
    flex-direction: column;
    align-items: center;
    }

    h1 {
    font-weight: 800;
    color: #2c3e50;
    margin-bottom: 40px;
    letter-spacing: 1.4px;
    text-shadow: 1px 1px 3px rgba(0,0,0,0.1);
    animation: fadeInDown 0.8s ease forwards;
    }

    @keyframes fadeInDown {
    from {
    opacity: 0;
    transform: translateY(-30px);
    }
    to {
    opacity: 1;
    transform: translateY(0);
    }
    }

    .table {
    width: 100%;
    max-width: 1100px;
    background-color: #ffffff;
    border-radius: 15px;
    overflow: hidden;
    box-shadow: 0 16px 40px rgba(0, 0, 0, 0.1);
    animation: fadeInUp 0.8s ease forwards;
    }

    @keyframes fadeInUp {
    from {
    opacity: 0;
    transform: translateY(30px);
    }
    to {
    opacity: 1;
    transform: translateY(0);
    }
    }

    th {
    background: linear-gradient(45deg, #4f46e5, #3b82f6);
    color: #ffffff;
    font-weight: 700;
    letter-spacing: 0.1em;
    padding: 14px 12px;
    text-align: center;
    }

    td {
    padding: 14px 12px;
    vertical-align: middle !important;
    text-align: center;
    color: #4a4a4a;
    font-weight: 600;
    background: #f9fbff;
    transition: background-color 0.3s ease, color 0.3s ease;
    }

    tbody tr:hover td {
    background-color: #e0e7ff;
    color: #2a2e83;
    cursor: default;
    }

    .btn-info, .btn-danger {
    margin-right: 8px;
    border-radius: 8px;
    font-weight: 700;
    padding: 8px 18px;
    box-shadow: 0 3px 8px rgba(0,0,0,0.12);
    transition: transform 0.3s ease, box-shadow 0.3s ease, background-color 0.3s ease;
    border: none;
    color: white;
    cursor: pointer;
    }

    .btn-info {
    background: linear-gradient(45deg, #6366f1, #4f46e5);
    }

    .btn-info:hover {
    background: linear-gradient(45deg, #4f46e5, #4338ca);
    box-shadow: 0 8px 20px rgba(79, 70, 229, 0.5);
    transform: translateY(-3px);
    }

    .btn-danger {
    background: linear-gradient(45deg, #ef4444, #dc2626);
    }

    .btn-danger:hover {
    background: linear-gradient(45deg, #dc2626, #b91c1c);
    box-shadow: 0 8px 20px rgba(220, 38, 38, 0.5);
    transform: translateY(-3px);
    }

    /* Responsive adjustments */
    @media (max-width: 768px) {
    th, td {
    padding: 12px 8px;
    font-size: 0.9rem;
    }

    .btn-info, .btn-danger {
    padding: 6px 12px;
    font-size: 0.85rem;
    }
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
