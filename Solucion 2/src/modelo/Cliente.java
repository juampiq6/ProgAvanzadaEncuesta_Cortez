/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package modelo;

/**
 *
 * @author Ing. Gerardo Magni
 */
public class Cliente {
    private int id;
    private String nombre;
    private String apellido;
    private String dni;
    private String nombreCalle;
    private int numero;
    private String localidad;
    private String provincia;

    public Cliente() {
    }

    public Cliente(String nombre, String apellido, String dni, String nombreCalle, int numero, String localidad, String provincia) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.dni = dni;
        this.nombreCalle = nombreCalle;
        this.numero = numero;
        this.localidad = localidad;
        this.provincia = provincia;
    }

 
    

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getLocalidad() {
        return localidad;
    }

    public void setLocalidad(String localidad) {
        this.localidad = localidad;
    }

    public String getNombreCalle() {
        return nombreCalle;
    }

    public void setNombreCalle(String nombreCalle) {
        this.nombreCalle = nombreCalle;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getProvincia() {
        return provincia;
    }

    public void setProvincia(String provincia) {
        this.provincia = provincia;
    }
    
}
