<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="style.css">
    <title>Listado</title>
  </head>
  <body>
      
    <sql:setDataSource var = "libreria" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/libreria"
         user = "root" />


    <% String var = request.getParameter("txtBuscador"); %>


    <sql:query dataSource = "${libreria}" var = "resultBooks">

           SELECT id_libro, l.titulo, a.nombre_autor, concat('$',format(l.precio_neto, 0)) precio , lib.nombre_libreria, lib.ubicacion_libreria
           FROM libro l JOIN libro_libreria ll USING (id_libro)
           JOIN libreria lib USING(id_libreria)
           JOIN autor a USING(id_autor)
           JOIN genero g USING (id_genero)
           WHERE titulo like('%<%=var%>%')
           OR a.nombre_autor like('%<%=var%>%')
           OR g.nombre_genero like('%<%=var%>%')
           ORDER BY l.precio_neto

    </sql:query>


    <c:choose>
        <c:when test="${fn:length(resultBooks.rows) != 0}">
            
            <table class="tabla_mostrar">
                
                <tr >
                   <th>Titulo </th>
                   <th>Autor </th>
                   <th>Precio</th>
                   <th>Libreria</th>
                   
                </tr>
                
                
                <c:forEach var = "row" items = "${resultBooks.rows}">
                    
                    <tr class="cuerpo_tabla_mostrar" onclick="location.href = 'detalles.jsp?id_libro=${row.id_libro}'" title = "Mostrar Detalles">
                      <td> <c:out value = "${row.titulo}"/></td>
                      <td> <c:out value = "${row.nombre_autor}"/></td>
                      <td> <c:out value = "${row.precio}"/></td>
                      <td> <c:out value = "${row.nombre_libreria}"/></td>
                   </tr>
                </c:forEach>
            </table>
        </c:when>
          <c:otherwise>
            <div class="errorMessage">
                <p>No se ha encontrado el libro con la especificaciones dadas</p>
            </div>
         </c:otherwise>
    </c:choose>
           

</html>
