package Clases;

public class Oferta {
    
    private int ID;
    private String nombre = "";
    private String precio = "";
    private String hospedaje = "";
    private String alimentacion = "";
    private String atracciones = "";
    private String otros = "";
    private String correo = "";

    public Oferta() {
    }

    public Oferta(int ID, String nombre, String precio, String hospedaje, String alimentacion, String atracciones, String otros, String correo) {
        this.ID = ID;
        this.nombre = nombre;
        this.precio = precio;
        this.hospedaje = hospedaje;
        this.alimentacion = alimentacion;
        this.atracciones = atracciones;
        this.otros = otros;
        this.correo = correo;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPrecio() {
        return precio;
    }

    public void setPrecio(String precio) {
        this.precio = precio;
    }

    public String getHospedaje() {
        return hospedaje;
    }

    public void setHospedaje(String hospedaje) {
        this.hospedaje = hospedaje;
    }

    public String getAlimentacion() {
        return alimentacion;
    }

    public void setAlimentacion(String alimentacion) {
        this.alimentacion = alimentacion;
    }

    public String getAtracciones() {
        return atracciones;
    }

    public void setAtracciones(String atracciones) {
        this.atracciones = atracciones;
    }

    public String getOtros() {
        return otros;
    }

    public void setOtros(String otros) {
        this.otros = otros;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

}
