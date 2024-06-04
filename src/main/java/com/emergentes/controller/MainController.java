/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.emergentes.controller;

import com.emergentes.bean.BeanEstudiante;
import com.emergentes.entidades.Estudiante;
import static com.emergentes.entidades.Estudiante_.fechaNacimiento;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "MainController", urlPatterns = {"/MainController"})
public class MainController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("estamosssssssssss en el servlet");
       // eliminar();
       editar();
        mostrar();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    private void mostrar() {
        BeanEstudiante dao = new BeanEstudiante();
        List<Estudiante> lista = dao.listarTodos();
        for (Estudiante item : lista) {
            System.out.println(item.toString());
        }
    }
    
    private void nuevo()
    {
        BeanEstudiante dao= new BeanEstudiante();
        
        Estudiante e = new Estudiante();
        e.setNombre("Claudia");
        e.setApellidos("Ruiz");
        e.setEmail("cruiz@gmail.com");
        e.setFechaNacimiento(convierteFecha("2004-06-06"));
        
        dao.insertar(e);
    }
    
    private void editar()
    {
        BeanEstudiante dao= new BeanEstudiante();
        
        Integer id =2;
        Estudiante e = dao.buscar(id);
        e.setApellidos("Alanoca");
        
        dao.editar(e);
    }
    
    private void eliminar(){
        BeanEstudiante dao= new BeanEstudiante();
        Integer id=3;
        dao.eliminar(id);
    }

    public Date convierteFecha(String fecha) {
        Date fechaBD = null;
        SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
        java.util.Date fechaTMP;
        try {
            fechaTMP = formato.parse(fecha);
            fechaBD = new Date(fechaTMP.getTime());
        } catch (ParseException ex) {
            Logger.getLogger(MainController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return fechaBD;
    }
}
