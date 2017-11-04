<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <title>UTN FRM</title>
    </head>
    <body>
        <div class="container">
            <div class="row"></div>
            <div class="col-md-2"> </div>
            <div class="col-md-8"> </div>
            <div class="jumbotron">
            <form class="navbar-form navbar" role="search">
                <a href="http://localhost/Encuesta/Admision.php" class="btn btn-primary">Ingreso</a>
                <a href="http://localhost/Encuesta/MitadCarrera.php" class="btn btn-primary">Mitad Carrera</a>
                <a href="http://localhost/Encuesta/Desercion.php" class="btn btn-primary">Desercion</a>
                <a href="http://localhost/Encuesta/Titulacion.php" class="btn btn-primary">Titulacion</a>
                <a href="http://localhost/Encuesta/Laboral.php" class="btn btn-primary">Laboral</a>
                <a href="http://localhost/Encuesta/Progreso.php" class="btn btn-primary">Progreso laboral</a>
                <h1>Gestion de personas</h1>
                    <h3>Administra los datos de todos los que componen la Universidad</h3>
                <button type="button" class="btn btn-primary" data-toggle="modal" 
                        data-target="#agregarPersona">Agregar Persona</button>
                <table id="tablaPersonas" class="table">
                    <thead>
                        <tr>

                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>DNI</th>
                            <th>Tipo de persona</th>     <!-- Si alumno o profesor-->
                            <th>Acciones</th>
                        </tr>
                    </thead>

                    <tbody id="cuerpoTabla"></tbody>
                </table>
                <div class="col-md-2"> </div>


                <!--_______________________________________________________-->

                <div class="modal fade" id="modalPersona" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <form id="formPersona" class="form-horizontal"
                                  data-bv-message="valor incorrecto"
                                  data-bv-feedbackicons-valid="glyphicon glyphicon-ok"
                                  data-bv-feedbackicons-invalid="glyphicon glyphicon-remove"
                                  data-bv-feedbackicons-validating="glyphicon glyphicon-refresh"
                                  data-bv-submitbuttons='button[type="submit"]'
                                  data-bv-trigger="focus blur"
                                  data-bv-live="enabled">
                                <!-- Header del modal -->
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title" id="tituloModal">titulo</h4>
                                </div>
                                <div class="modal-body">

                                    <div class="form-group">
                                        <div class="form-group">
                                            <label class='col-lg-2'>Nombre:</label>
                                            <div class='col-lg-10'>
                                                <input class="form-control" type="text" id="nombre" name="* Nombre"
                                                       data-bv-notempty="true"
                                                       data-bv-notempty-message="Los campos con * son de caracter obligatorio">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class='col-lg-2'>Apellido:</label>
                                            <div class='col-lg-10'>
                                                <input class="form-control" type="text" id="apellido" name="* Apellido"
                                                       data-bv-notempty="true"
                                                       data-bv-notempty-message="Los campos con * son de caracter obligatorio">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class='col-lg-2'>Dni:</label>
                                            <div class='col-lg-10'>
                                                <input class="form-control" type="text" id="dni" name="* DNI"
                                                       data-bv-message="El dni no es válido"

                                                       data-bv-notempty="true"
                                                       data-bv-notempty-message="Los campos con * son de caracter obligatorio"

                                                       data-bv-regexp="true"
                                                       data-bv-regexp-regexp="[0-9]+"
                                                       data-bv-regexp-message="por favor ingrese solo numeros"

                                                       data-bv-stringlength="true"
                                                       data-bv-stringlength-min="8"
                                                       data-bv-stringlength-max="8"
                                                       data-bv-stringlength-message="Los documentos deben tener un minimo de 8 numeros">
                                            </div>
                                            <div class="form-group">
                                                <label class='col-lg-2'>Tipo:</label>
                                                <div class='col-lg-10'>
                                                    <input class="form-control" type="text" id="nombre" name="* Tipo"
                                                           data-bv-notempty="true"
                                                           data-bv-notempty-message="Los campos con * son de caracter obligatorio">
                                                    <div class="dropdown">
                                                        <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                                            Dropdown
                                                            <span class="caret"></span>
                                                        </button>
                                                        <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                                            <li><a href="#alumno">Alumno</a></li>
                                                            <li><a href="#profesor">Profesor</a></li>
                                                            <li role="separator" class="divider"></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>



                                    </div>

                                </div>
                                <div class="modal-footer">
                                    <div class="modal-footer">                            
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                        <button type="button" id="guardar" class="btn btn-primary">Guardar</button>
                                    </div>
                                </div>
                        </div>
                    </div>

                </div>
        </div>
        </div>
    </body>
</html>
