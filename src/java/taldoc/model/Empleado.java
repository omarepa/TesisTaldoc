/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package taldoc.model;

import java.io.Serializable;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

import java.util.ArrayList;

/**
 *
 * @author edpena
 */
@ManagedBean(name = "empleado", eager = true)
@SessionScoped
public class Empleado implements Serializable{
    
    private static final long id = 1L;
    private String nombre;
    private ArrayList<Empleado> empleados;

    public Empleado()
    {}
    
    public Empleado(String nombre)
    {
        this.nombre = nombre;
    }
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public ArrayList getEmpleados() {
        empleados = new ArrayList<>();
        empleados.add(new Empleado("Gloria Luz Castillo Barrera"));
        empleados.add(new Empleado("Edgar Omar Peña de Alba"));
        empleados.add(new Empleado("Janete Sanchez Mejía"));
        empleados.add(new Empleado("Alejandro Rodriguez Rodriguez"));
        empleados.add(new Empleado("Valentín Misael Partida Bañales"));
        return empleados;
    }

    public void setEmpleados(ArrayList empleados) {
        this.empleados = empleados;
    }
    
    
}
