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
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">


    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><img src="https://portillonancy.com/assets/img/portfolio/codoacodo.png" alt="" width="130" height=84" class="d-inline-block align-text-top"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
          <a class="nav-link active" aria-current="page" href="../index.html">Inicio</a>
        <a class="nav-link" href="alumnos.jsp">Alumnos</a>
        <a class="nav-link" href="nuevo.jsp">Cargar Alumno</a>
      </div>
    </div>
  </div>
</nav>
        <h1 class="text-center">Listado de Alumnos</h1>
        
        
        
        
        <div class="container">
            <div class="row">
                
                <table class="table table-primary">
                    <thead>
                    <th>id</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Email</th>
                    <th class="text-center">Modificar</th>
                    <th class="text-center">Eliminar</th>
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
                        <td class="text-center"><a class="text-success" href=<%=ruta%>><i class="fas fa-angle-double-down"></i></a></td>
                        <td class="text-center"><a class="text-danger" href=<%=rutaE %>><i class="fas fa-angle-double-down"></i></a></td>
                        
                    </tr>
                    
                    <%
                        }
                    %>
                    
                </table>
                    
                <a class="btn btn-primary col-2 text-center" href="../AlumnosControler?accion=nuevo">Agregar Alumno</a>
              
            </div>
            
        </div>
                    <footer style="position: absolute; bottom: 0; width: 100%; height: 15%" class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
      <h5 class="text-center" style="color: white">Alumno Hernan Raso</h5>
      <a style="color: white" href="contacto.html" >CONTACTO</a>
      <a style="color: white">Copyright Hernan Raso</a>
</footer>
                   
        
    </body>
</html>
