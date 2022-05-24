<%-- 
    Document   : addSanPham
    Created on : May 24, 2022, 7:54:21 PM
    Author     : ADMIN
--%>

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
            String loaidungcu=request.getParameter("loai");
            Connection con = Connectdb.getConnection();
            String sql = "insert into SanPham "
               + "Values(dbo.FN_getidSanPham(),?,?,?)";
       try {
           PreparedStatement preparedStatement = con.prepareStatement(sql);
           preparedStatement.setString(1,request.getParameter("tensp"));
           preparedStatement.setFloat(2,Float.valueOf(request.getParameter("giasp")));
           preparedStatement.setString(3,request.getParameter("loai"));
           
           preparedStatement.execute();
           
       } catch (Exception e) {
           System.out.println("Lỗi Add Sản phẩm!");
       }
        %>
    </body>
    <jsp:forward page="mainSanPham.jsp?loai=<%=loaidungcu%>"></jsp:forward>
</html>
