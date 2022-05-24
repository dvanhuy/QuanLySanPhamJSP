<%-- 
    Document   : menuChon
    Created on : May 24, 2022, 4:11:54 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            String loai = request.getParameter("loai");
            loai = loai.toString().trim();
       %>
    </body>
    <jsp:forward page="mainSanPham.jsp?loai=<%=loai%>"></jsp:forward>
</html>
