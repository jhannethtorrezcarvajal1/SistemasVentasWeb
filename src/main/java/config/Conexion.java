/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package config;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author KB
 */
public class Conexion {
        Connection con;
        String url="jdbc:mysql://localhost:3306/bd_ventas";
        String user="root";
        String pass="";
        public Connection Conexion(){
        try{
            Class.forName("com.mysql.jdbc.Drver");
            con=DriverManager.getConnection(url,user,pass);            
        }catch(Exception e){
        }return con;
        }
        
}
