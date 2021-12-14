<%-- 
    Document   : nuevo
    Created on : 26 nov. 2021, 22:10:00
    Author     : herna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo</title>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

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
        <div class="container">
            <h1 class="text-center">Añadir Alumno</h1>
                <div class="row"></div>
                <form class="p-5" method="POST" action="AlumnosControler?accion=insert">
                    <div class="mb-3">
                        <label form="nombre" class="form-label">Nombre</label>
                        <input type="text" class="form-control" id="nombre" name="nombre">
                        
                    </div>
                    <div class="mb-3">
                        <label form="apellido" class="form-label">Apellido</label>
                        <input type="text" class="form-control" id="apellido" name="apellido">
                        
                    </div>
                    <div class="mb-3">
                        <label form="mail" class="form-label">E-Mail</label>
                        <input type="text" class="form-control" id="mail" name="mail">
                        
                    </div>
                    
                    <button type="sumbit" class="btn btn-primary"> Añadir </button>
                    
                    
                </form>
            
        </div>
        
        <footer style="position: absolute; bottom: 0; width: 100%; height: 15%" class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
      <h5 class="text-center" style="color: white">Alumno Hernan Raso</h5>
      <a style="color: white" href="contacto.html" >CONTACTO</a>
      <a style="color: white">Copyright Hernan Raso</a>
</footer>
        
        
        
        
    </body>
</html>
