<%-- 
    Document   : llenar
    Created on : 26-mar-2017, 21:19:09
    Author     : javie
--%>


<%@page import="java.sql.*,java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro exitoso</h1>
        <%
            String nom = request.getParameter("nombre");
            
           
            String escuela = request.getParameter("escuela");
            String apaterno = request.getParameter("paterno");
            String amaterno = request.getParameter("materno");
            
            Connection con = null;
            Statement sta = null;
            
            try{
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con= DriverManager.getConnection("jdbc:mysql://localhost/alumno","root","n0m3l0");
                sta = con.createStatement(); 
                
            }
            catch(SQLException error){
                out.print(error.toString());
                
            }
            try {
                
               sta.executeUpdate("insert into datos values('"+nom+"','"+apaterno+"','"+amaterno+"','"+escuela+"');");
                
                
            }
              catch(SQLException error){
                out.print(error.toString());
                
                
                
            }
            con.close();
            
            
            
            
        %>
    </body>
</html>
