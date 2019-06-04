<%-- 
    Document   : detalles
    Created on : 20-nov-2017, 11:57:06
    Author     : Diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link rel="stylesheet" href="style.css">
        <title> Detalles </title>
    </head>
    <body>
        
        <sql:setDataSource var = "libreria" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/libreria"
         user = "root" />     
        
        <% String var = request.getParameter("id_libro"); %>
        
        <sql:query dataSource = "${libreria}" var = "resultBooks">

           SELECT id_libro, l.titulo, a.nombre_autor, concat('$',format(l.precio_neto, 0)) precio , lib.nombre_libreria, lib.ubicacion_libreria, g.nombre_genero,
                  e.nombre_editorial, tp.descripcion_tapa
           FROM libro l JOIN libro_libreria ll USING (id_libro)
           JOIN libreria lib USING(id_libreria)
           JOIN autor a USING(id_autor)
           JOIN genero g USING (id_genero)
           JOIN editorial e USING (id_editorial)
           JOIN tipo_tapa tp USING (id_tipo_tapa)
           WHERE id_libro = <%=var%>

         </sql:query>
           
           <table class="tabla_detalles">
                
             
               
                <c:forEach var = "row" items = "${resultBooks.rows}">
                   
                    <tr>
                        <td><b>Nombre:</b> <c:out value = "${row.titulo}"/></td>
                    </tr>
                    
                    <tr>
                        <td><b>Autor:</b> <c:out value = "${row.nombre_autor}"/></td>                        
                    </tr>
                     
                    <tr>
                        <td><b>Genero:</b> <c:out value = "${row.nombre_genero}"/></td>                        
                    </tr>
                    
                    <tr>
                        <td><b>Encuadernacion:</b> <c:out value = "${row.descripcion_tapa}"/></td>  
                    </tr>
                    
                    <tr>
                        <td><b>Editorial:</b> <c:out value = "${row.nombre_editorial}"/></td>
                    </tr>
                           
                    <tr>
                        <td><b>Precio:</b> <c:out value = "${row.precio}"/></td>
                    </tr>
                    
                    <tr>
                        <td><b>Libreria</b> <c:out value = "${row.nombre_libreria}"/></td>
                    </tr>
                    
                    <tr>
                        <td><b>Ubicacion:</b> <c:out value = "${row.ubicacion_libreria}"/></td>
                    </tr>
                      
                                       
                         
                </c:forEach>
                
               </table>           
        
    </body>
</html>
