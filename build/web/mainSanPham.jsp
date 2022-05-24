<%-- 
    Document   : mainSanPham
    Created on : May 24, 2022, 1:09:43 PM
    Author     : ADMIN
--%>

<%@page import="java.util.List"%>
<%@page import="helpSource.SanPham"%>
<%@page import="helpSource.ServiceSp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh sách sản phẩm</title>
</head>

<body>
    <%
        String code="";
        String loai = request.getParameter("loai");
        if (loai==null){
            loai="Guitars";
        }
        ServiceSp serviceSp = new ServiceSp();
        List<SanPham> listSp= serviceSp.getListSP(loai);
     %>
    <div class="main">
        <div class="p1">
            <div class="title">Nhóm sản phẩm</div>
            <div class="menu">
                <ul>
                    <!--có thể <li><a href=menuChon.jsp?loai=$"Guitars""+ ">Guitars</a><li>-->
                    <%
                        out.println("<li><a href=menuChon.jsp?loai=" +"Guitars"+ ">Guitars</a><li>");
                        out.println("<li><a href=menuChon.jsp?loai=" +"Basses"+ ">Basses</a><li>");
                        out.println("<li><a href=menuChon.jsp?loai=" +"Drums"+ ">Drums</a><li>");
                    %>    
                </ul>
            </div>
        </div>
                
        <div class="p2">
            <div class="title">Nhóm sản phẩm</div>
            <div class="data_table">
                <table >
                    <tr>
                        <th>STT</th>
                        <th>Tên SP</th>
                        <th>Giá SP</th>
                        <th>Thao tác</th>
                    </tr>
                    <%
                        int sothutu=1;
                        for(SanPham x : listSp)
                        {
                            code = x.getIdSp().toString().trim();
                            out.println("<tr>");
                            out.println     ("<td>" + sothutu + "</td>");
                            out.println     ("<td>" + x.getTenSP() + "</td>");
                            out.println     ("<td>" +x.getGiaSp()+"</td>");
                            out.println("<td><a href=deleteSanPham.jsp?code=" +code+ "&loai="+loai+">Delete</a></td></tr>");
                            out.println("</tr>");   
                            sothutu++;
                        }
                    %>
                </table>
            </div>
            <div class="container_bt">
                <a href="formadd.html">
                    <div class="button">
                        Tạo mới
                    </div>
                </a>
            </div>
            
        </div>
    </div>
</body>
<link rel="stylesheet" href="index.css">

</html>

