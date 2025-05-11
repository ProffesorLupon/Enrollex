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

/**
 *
 * @author shots
 */
public class EnrollServlet extends HttpServlet {

    @EJB
    private NewStudentFacadeLocal nsfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String id = request.getParameter("id");
        String email = request.getParameter("email");
        String highschool = request.getParameter("highschool");
        String phone = request.getParameter("phone");
        String qualification = request.getParameter("qualification");
        
      
        request.setAttribute("name", name);
        request.setAttribute("surname", surname);
        request.setAttribute("id", id);
        request.setAttribute("email", email);
        request.setAttribute("highschool", highschool);
        request.setAttribute("phone", phone);
        request.setAttribute("qualification", qualification);
        
        
        RequestDispatcher disp = request.getRequestDispatcher("enrollmentResult.jsp");
        disp.forward(request, response);
      
    }
}
