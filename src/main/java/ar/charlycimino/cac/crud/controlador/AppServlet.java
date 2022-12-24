
package ar.charlycimino.cac.crud.controlador;

import ar.charlycimino.cac.crud.modelo.Alumno;
import ar.charlycimino.cac.crud.modelo.Modelo;
import ar.charlycimino.cac.crud.modelo.ModeloHC;
import ar.charlycimino.cac.crud.modelo.ModeloMySQL;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 *
 * @author Charly Cimino Aprendé más Java en mi canal:
 * https://www.youtube.com/c/CharlyCimino Encontrá más código en mi repo de
 * GitHub: https://github.com/CharlyCimino
 */
@WebServlet(name = "AppServlet", urlPatterns = {"/app"})
public class AppServlet extends HttpServlet {

    private Modelo model;
    private static final String URL_LIST = "WEB-INF/pages/alumnos/listadoAlumnos.jsp";
    private static final String URL_REMOVE = "WEB-INF/pages/alumnos/borrarAlumno.jsp";
    private static final String URL_EDIT = "WEB-INF/pages/alumnos/editarAlumno.jsp";
    private static final String URL_READ = "tarea.jsp";
    
    
    /* inicializo la lista */
    @Override
    public void init() throws ServletException {
        this.model = new ModeloHC();    
        /*this.model = new ModeloMySQL();*/
    }
    
    
 protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        String laAccion = req.getParameter("accion");
        String idStr = req.getParameter("id");
        
//        System.out.println(laAccion);
//        System.out.println(id);
        
        int id = (idStr == null ? -1 : Integer.parseInt(idStr));
        laAccion = (laAccion == null ? "" : laAccion);
        
        switch(laAccion) {
            
            case "delete":
                model.removeAlumno(id);
                
                break;
                
            case "update":
                Alumno alu = model.getAlumno(id);
                cargarAlumnoSegunParams(alu, req);
                model.updateAlumno(alu);
                
                break;
                
            case "add":
                Alumno aluNuevo = new Alumno();
                cargarAlumnoSegunParams(aluNuevo, req);
                model.addAlumno(aluNuevo);
                
                break;
                
         
        }
        resp.sendRedirect(getServletContext().getContextPath() + "/app");
       
        
 }
    
 private void cargarAlumnoSegunParams(Alumno a, HttpServletRequest request) {
     a.setNombre(request.getParameter("nombre"));
     a.setApellido(request.getParameter("apellido"));
     a.setMail(request.getParameter("mail"));
     a.setFechaNacimiento(request.getParameter("fechaNac"));
     a.setFoto(request.getParameter("fotoBase64"));
     
 }
    
    @Override 
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        String laAccion = req.getParameter("accion");
        String idStr = req.getParameter("id");
        
//        System.out.println(laAccion);
//        System.out.println(id);
        
        int id = (idStr == null ? -1 : Integer.parseInt(idStr));
        laAccion = (laAccion == null ? "" : laAccion);
        
        
        
        switch(laAccion) {
            
            case "remove":
                req.setAttribute("alumnoABorrar", model.getAlumno(id));
                req.getRequestDispatcher(URL_REMOVE).forward(req, resp);
                break;
                
            case "edit":
                Alumno alu = model.getAlumno(id);
                req.setAttribute("alumnoAEditar", alu);
                req.setAttribute("yaTieneFoto", !alu.getFoto().contains("no-face"));
                req.getRequestDispatcher(URL_EDIT).forward(req, resp);
                break;
                
            case "add":
                 
                break;
                
            case "read":
                Alumno alu2 = model.getAlumno(id);
                req.setAttribute("alumnoALeer", alu2);
                req.getRequestDispatcher(URL_READ).forward(req, resp);
                break;
            
            default:
                req.setAttribute("listaAlumnos", model.getAlumnos());
                req.getRequestDispatcher(URL_LIST).forward(req, resp);
            
        }

    }    
}
