$(function() {
    
    var loguearse = {};
    
    (function(app){
        
        app.init = function() {            
            app.bindings();
        };
        
        app.bindings = function() {      
            app.bindings = function() {
              $("#registrarse").on('click', function(event) {
                $("#id").val(0);
                $("#nombre").val("");
                $("#apellido").val("");
                $("#dni").val("");
                $("#tipo").val("");
                $("#modalregistrot").html("Nueva Persona");
                $("#modalregistro").modal({show: true});
            });
            };
             app.init();
        
    }(loguearse);}

