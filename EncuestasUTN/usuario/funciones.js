$(function() {
    var Proyecto = {};

    (function(app) {

        app.init = function() {
            //app.buscarPersona();
            app.bindings();
        };




        app.bindings = function() {
          
            $("#agregaP").on('click', function(event) {
                $("#id").val(0);
                $("#nombre").val("");
                $("#apellido").val("");
                $("#dni").val("");
                $("#tipo").val("");
                $("#modaltit").html("Nueva Persona");
                $("#modalPersona").modal({show: true});
            });
            };
        
//        app.buscarPersona = function() {;
//          
//             var archivo = "ACA VA DEL BACKEND";
//            
//            $.ajax({
//                url: archivo,
//                method: 'GET',
//                dataType: 'json',
//                success: function(datosRecibidos) {
//                    app.cargaTabla(datosRecibidos);
//                },
//                error: function() {
//                    alert('error');
//                }
//            });
//        };
        

//        app.cargaTabla = function (datosPersona) {
//            var html = "ACA BACKEND";
//
//            $.each(datosPersona, function (clave, persona) {
//
//                html += "<tr>\n\
//                            <td>" + persona.nombre + "</td>\n\
//                            <td>" + persona.apellido + "</td>\n\
//                            <td>" + persona.dni + "</td>\n\
//                            <td>"+ persona.tipo +"</td>\n\
//                            <td><a href='controladorBackend/eliminar.php?id=" + persona.id + "'>Eliminar</a>" + "<a> Editar</a> </td>\n\
//                        </tr>";
//
//
//
//
//
//            });

            $("#cuerpopersona").html(html);



        //};



    
        
        
        app.init();

    })(Proyecto);


});
