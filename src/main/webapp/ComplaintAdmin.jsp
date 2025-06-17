<%@ page import="org.example.cmsjavaee.dto.ComplaintDto" %>
<%@ page import="org.example.cmsjavaee.model.ComplaintModel" %><%--
  Created by IntelliJ IDEA.
  User: skc
  Date: 6/17/2025
  Time: 10:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">

</head>
<body>
<% ComplaintDto complaint = ComplaintModel.findById(request.getServletContext(), request.getParameter("id"));%>
<form class="row g-3" action="/admin?id=<%= complaint.getId()%>&eid=<%= complaint.getE_id()%>" method="post">
    <div class="col-md-6">
        <label for="desc" class="form-label">Description</label>
        <input type="text" class="form-control" id="desc" name="description" required value="<%=complaint.getDescription()%>">
    </div>
    <div class="col-md-6">
        <label for="date" class="form-label">Date</label>
        <input type="date" class="form-control" id="date" name="date" required value="<%=complaint.getDate()%>">
    </div>
    <div class="col-md-6">
        <label for="status" class="form-label">Status</label>
        <input type="text" class="form-control" id="status" name="status" required value="<%=complaint.getStatus()%>">
    </div>
    <div class="col-md-6">
        <label for="comment" class="form-label">Comment</label>
        <input type="text" class="form-control" id="comment" name="comment" required value="<%=complaint.getComment()%>">
    </div>
    <div class="col-12">
        <button class="btn btn-primary" type="submit">Update</button>
    </div>
</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>

</body>
</html>
