<%-- 
    Document   : modificar
    Created on : 26 nov. 2021, 22:10:33
    Author     : herna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar</title>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    </head>
    <body>
        <div class="container">
            <h1 class="text-center">Modificar Alumno</h1>
                <div class="row"></div>
                <form class="p-5" method="POST" action="AlumnosControler?accion=actualizar">
                    <div class="mb-3">
                        <label form="id" class="form-label"></label>
                        <input type="hidden" class="form-control" id="id" name="id" value=<%=resultado.getId()%>>
                        
                    </div>
                    <div class="mb-3">
                        <label form="nombre" class="form-label">Nombre</label>
                        <input type="text" class="form-control" id="nombre" name="nombre" value=<%=resultado.getNombre()%>>
                        
                    </div>
                    <div class="mb-3">
                        <label form="apellido" class="form-label">Apellido</label>
                        <input type="text" class="form-control" id="apellido" name="apellido" value=<%=resultado.getApellido()%>>
                        
                    </div>
                    <div class="mb-3">
                        <label form="mail" class="form-label">E-Mail</label>
                        <input type="text" class="form-control" id="mail" name="mail" value=<%=resultado.getMail()%>>
                        
                    </div>
                    
                    <button type="sumbit" class="btn btn-primary"> Modificar </button>
                    
                    
                </form>
            
        </div>
    </body>
</html>
