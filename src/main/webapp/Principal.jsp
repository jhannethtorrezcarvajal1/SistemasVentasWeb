<%-- 
    Document   : Principal
    Created on : 7 dic 2022, 16:11:34
    Author     : KB
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-info">
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home </a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left:10px; border: none " class="btn btn-outline-ligt" href="Controlador?menu=Producto" target="myFrame">Producto</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-outline-ligt" href="Controlador?menu=Empleado&accion=Listar" target="myFrame">Empleado</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-outline-ligt" href="Controlador?menu=Clientes" target="myFrame">Clientes</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-outline-ligt" href="Controlador?menu=RegistrarVenta" target="myFrame">Nueva Venta</a>
                    </li>
                </ul>
                <div class="dropdown">
                    <button class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
                       Usuario Ingresado 
                    </button>
                    <div class="dropdown-menu text-center">
                        <a class="dropdown-item" href="#">
                                                        
                        </a>
                        <a class="dropdown-item" href="#">Usuario</a>
                        <a class="dropdown-item" href="#">usuario@gmail.com</a>
                        <div class="dropdown-divider"></div>
                        <form action="Validar" method="POST">
                            <button name="accion" value="Salir" class="dropdown-item" href="#">Salir</button>    
                        </form>
                        
                    </div>
                </div>
            </div>
        </nav>
     
                 <div class="d-flex">
             <div class="card col-sm-6">
            <div class="card-body">
                <form>
                    <div class="form-group">
                        <label>Ci</label>
                        <input type="text" name="txtDni" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Nombres</label>
                        <input type="text" name="txtNombres" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Telefono</label>
                        <input type="text" name="txtTel" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Estado</label>
                        <input type="text" name="txtestado" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Usuario</label>
                        <input type="text" name="txtUsuario" class="form-control">
                    </div>
                    <input type="submit" name="accion" value="Agregar" class="btn btn-info">                  
                </form>
            </div>
        </div>
            <div class="col-sm-8">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <td>Ci</td>
                        <td>Nombres</td>
                        <td>Telefono</td>
                        <td>Estado</td>
                        <td>User</td>
                        <td>Acciones</td>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="em" items="${empleados}">
                       <tr>
                        <td>${em.getId()}</td>
                        <td>${em.getDni()}</td>
                        <td>${em.getNom()}</td>
                        <td>${em.getTel()}</td>
                        <td>${em.getEstado()}</td>
                        <td>${em.getUser()}</td>
                        <td>
                            <a>Editar</a>
                            <a>Eliminar</a>
                        </td>
                    </tr>  
                        
                    </c:forEach>
                    
                </tbody>
            </table> 
        </div>
        </div>
       
      
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>

</html>

<%-- 
Agregar del minuto 3:21
<iframe name="myFrame" style="height:100%;width:100%;border:none"></iframe>
--%>
