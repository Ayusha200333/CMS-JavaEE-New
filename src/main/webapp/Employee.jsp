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
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">

</head>
<body>
<ul class="nav">
    <li class="nav-item">
        <a class="nav-link active" aria-current="page" href="#">Home</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="NewComplaint.jsp?id=<%= request.getParameter("id")%>">New complaint</a>
    </li>
</ul>

<table class="table">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">e_id</th>
        <th scope="col">description</th>
        <th scope="col">date_submitted</th>
        <th scope="col">status</th>
        <th scope="col"></th>
    </tr>
    </thead>
    <tbody>
    <%
        List<ComplaintDto> complaintDtos = new ComplaintModel().getById(request.getServletContext(),request.getParameter("id"));
        for (ComplaintDto complaintDto:complaintDtos){
    %>
    <tr>
        <th scope="row"><%=complaintDto.getId()%></th>
        <td><%=complaintDto.getE_id()%></td>
        <td><%=complaintDto.getDescription()%></td>
        <td><%=complaintDto.getDate()%></td>
        <td><%=complaintDto.getStatus()%></td>
        <td>
            <a class="btn btn-info" href="ComplaintUpdate.jsp?id=<%= complaintDto.getId()%>">Update</a>
            <a class="btn btn-danger" href="ComplaintDelete.jsp?id=<%= complaintDto.getId()%>">Delete</a>
        </td>
    </tr>

    <% } %>
    </tbody>
</table>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>
</body>
</html>
