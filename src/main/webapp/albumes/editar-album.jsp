<%-- 
    Document   : editar-estudiante
    Created on : 18 ago 2022, 10:15:10
    Author     : informatica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8"/>
        <link rel="stylesheet" type="text/css" href="../assets/css/hoja_estilo_kinal.css" />
        <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.css" />
        <link rel="stylesheet" href="../assets/css/modelo.css"/>
        <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.css.map" />
        <script src="../assets/js/b2dd7c91eb.js"></script>
        <title>Editar Album</title>
    </head>
    <body>
      
        <jsp:include  page ="../WEB-INF/paginas/comunes/cabecera.jsp"></jsp:include>
            <main>
                <div class="container">
                    <div class="row">
                        <div class="col-1 col-md-1">
                        </div>
                        <div class="col-10 col-md-10">
                            <br>
                            <br>
                            <div class="container">
                                <div class="row">
                                    <div class="col-4 mb-4">
                                        <a class="btn btn-secondary" href="${pageContext.request.contextPath}/ServletAlbum?accion=listar">
                                        <i class="fa fa-arrow-left"></i> Cancelar/Regresar 
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header">
                                <h4>Editar Albumes</h4>
                            </div>

                        </div>

                        <br>                            
                        <form method="POST" action="${pageContext.request.contextPath}/ServletAlbum"  class="was-validated">




                            <div class="modal-body ">

                                <div class="mb-3">
                                    <label for="id" class="col-form-label">Id:</label>
                                    <input type="text" class="form-control" id="id" name="id" value="${album.id}" readOnly="true">
                                </div>

                                <div class="mb-3">
                                    <label for="nombre" class="col-form-label">Nombre:</label>
                                    <input type="text" class="form-control" id="nombre" name="nombre" value="${album.nombre}" required>
                                </div>
                                <div class="mb-3">
                                    <label for="cantidadCanciones" class="col-form-label">Cantidad de Canciones:</label>
                                    <input type="text" class="form-control" id="cantidadCanciones" name="cantidadCanciones" value="${album.getCantidadCanciones()}" required>
                                </div>




                            </div>
                            <input type="hidden" name="accion" value="actualizar">

                            <div class="container mb-2">
                                <div class="row">
                                    <div class="col-6 text-center">
                                        <a class="btn btn-danger"href="${pageContext.request.contextPath}/ServletAlbum?accion=eliminar&id=${album.id}"> 
                                            <i class="fa-solid fa-trash"></i> Eliminar Albumes
                                        </a>
                                    </div>

                                    <div class="col-6 text-center">
                                        <button type="submit" class="btn btn-success">
                                            <i class="fas fa-check"></i> Guardar Cambios
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="col-1 col-md-1">

                    </div>
                </div>
            </div>

        </main>
        <aside>
            <!-- Aqui va a ir el contenido secundario -->
        </aside>

        <jsp:include  page ="../WEB-INF/paginas/comunes/pie-pagina.jsp"></jsp:include>

    </body>
    <script type="text/javascript" src="../assets/js/jquery-3.6.0.js"></script>
    <script type="text/javascript" src="../assets/js/jquery.flexslider.js"></script>
    <script type="text/javascript" src="../assets/js/jquery-3.6.0.js"></script>
    <script type="text/javascript" src="../assets/js/jquery.flexslider.js"></script>
    <script type="text/javascript" src="../assets/js/script.js"></script>
    <script type="text/javascript" src="../assets/js/bootstrap.bundle.js"></script>
</html>

   