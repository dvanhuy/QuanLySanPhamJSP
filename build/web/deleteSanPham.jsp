<%-- 
    Document   : deleteSP
    Created on : May 24, 2022, 3:36:48 PM
    Author     : ADMIN
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="helpSource.Connectdb"%>
<%@page import="java.sql.Connection"%>
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
            String code = request.getParameter("code");
            String sql = "Delete SanPham where idSp = ?";
            Connection con = Connectdb.getConnection(); 
            try {
                PreparedStatement pstmt = con.prepareStatement(sql);
                pstmt.setString(1, code);
                pstmt.executeQuery();

            } catch (Exception ex) {
                System.out.println("Error: " + ex.getMessage());
            }
        %>
        <jsp:forward page="mainSanPham.jsp?loai=<%=loai%>"></jsp:forward>
    </body>
</html>
