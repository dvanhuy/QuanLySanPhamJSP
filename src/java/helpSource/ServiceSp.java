/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package helpSource;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class ServiceSp {
    SanPham sanPham;

    public ServiceSp() {
    }

    public void setSanPham(SanPham sanPham) {
        this.sanPham = sanPham;
    }
    
    public List<SanPham> getListSP(String loai)
    {
        Connection con = Connectdb.getConnection();
        List<SanPham> listSp = new ArrayList<>();
        String sql= "select idSp,ten,gia " +
                    "from SanPham " +
                    "where loai=? ";
        try {
           PreparedStatement preparedStatement = con.prepareStatement(sql);
           preparedStatement.setString(1, loai);
           ResultSet rs = preparedStatement.executeQuery();
           while(rs.next())
           {
               SanPham newSp = new SanPham();
               
               newSp.setIdSp(rs.getString(1));
               newSp.setTenSP(rs.getString(2));
               newSp.setGiaSp(rs.getString(3));
               
               listSp.add(newSp);
           }
           return listSp;
       } catch (SQLException e) {
           System.out.println("Lỗi tại lấy SP theo loại");
           return null;
       }
        
    }
    
}
