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

<html>
<head>
    <title>Update/Delete Complaint</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">

    <!-- Update Form -->
    <form class="row g-3" action="<%=request.getContextPath()%>/update" method="post">
        <input type="hidden" name="id" value="<%= complaint.getId() %>">
        <input type="hidden" name="eid" value="<%= complaint.getE_id() %>">

        <div class="col-md-6">
            <label for="description" class="form-label">Description</label>
            <input type="text" class="form-control" id="description" name="description" required value="<%= complaint.getDescription() %>">
        </div>

        <div class="col-md-6">
            <label for="date" class="form-label">Date</label>
            <input type="date" class="form-control" id="date" name="date" required value="<%= complaint.getDate() %>">
        </div>

        <div class="col-12">
            <button type="submit" class="btn btn-primary">Update</button>
        </div>
    </form>

    <!-- Delete Form -->
    <form action="<%=request.getContextPath()%>/delete" method="post" class="mt-3">
        <input type="hidden" name="id" value="<%= complaint.getId() %>">
        <input type="hidden" name="eid" value="<%= complaint.getE_id() %>">
        <button class="btn btn-danger" type="submit">Delete</button>
    </form>

</div>
</body>
</html>
