<%-- 
    Document   : alumnos
    Created on : 26 nov. 2021, 22:09:06
    Author     : herna
--%>

<%@page import="modelo.alumnosDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.alumnos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alumnos</title>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


    </head>
    <body>
        <h1>Listado de Alumnos</h1>
        
        
        
        
        <div class="container">
            <div class="row">
                <a class="btn btn-primary col-4 m-4" href="AlumnosControler?accion=nuevo">Agregar Alumno </a>
                
                <table class="table table-primary">
                    <thead>
                    <th>id</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Email</th>
                    <th>Modificar</th>
                    <th>Eliminar</th>
                    </thead>
                    
                    <%
                        List<alumnos> resultado=null;
                        alumnosDAO alumno=new alumnosDAO();
                        resultado=alumno.listaralumnos();
            
                            for(int i=0;i<resultado.size();i++)
                            {
                             String ruta="AlumnosControler?accion=modificar&id="+resultado.get(i).getId();
                             String rutaE="AlumnosControler?accion=eliminar&id="+resultado.get(i).getId();
                    %>
                    <tr>
                        <td><%=resultado.get(i).getId() %></td>
                        <td><%=resultado.get(i).getNombre() %></td>
                        <td><%=resultado.get(i).getApellido() %></td>
                        <td><%=resultado.get(i).getMail() %></td>
                        <td><a class="text-success" href=<%=ruta%>>x</a></td>
                        <td><a class="text-danger" href=<%=rutaE %>>x</a></td>
                        
                    </tr>
                    
                    <%
                        }
                    %>
                    
                </table>
                
            </div>
            
        </div>
        
    </body>
</html>
