/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package helpSource;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author ADMIN
 */
public class Connectdb {
    public static Connection Connectionn(String may,String userName,String password){
        String url="jdbc:sqlserver://"+may+"\\SQLEXPRESS:1433;databaseName=QuanLySanPham";
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            return DriverManager.getConnection(url,userName,password);
        }
        catch(ClassNotFoundException | SQLException e)
        {
            System.out.println("Ket noi loi");
            System.out.println(e);
            return null;
        }
    }
    
    public static Connection getConnection()
    {
       return Connectdb.Connectionn("LAPTOP-ATNHOQI8","sa","12345");
    }
}
