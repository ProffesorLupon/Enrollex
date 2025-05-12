/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.web;

import jakarta.ejb.EJB;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import za.ac.bl.NewStudentFacadeLocal;
import za.ac.entity.NewStudent;

/**
 *
 * @author shots
 */
public class EditEnrollmentServlet extends HttpServlet {

    @EJB
    private NewStudentFacadeLocal nsfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String id = request.getParameter("id");
        
       NewStudent student = nsfl.find(id);
       request.setAttribute("student", student);
       
        RequestDispatcher disp = request.getRequestDispatcher("search_student_edit_outcome.jsp");
        disp.forward(request, response);
        
    }

}
