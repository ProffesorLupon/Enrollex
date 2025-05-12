package za.ac.web;

import jakarta.ejb.EJB;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.util.List;
import za.ac.bl.NewStudentFacadeLocal;
import za.ac.entity.NewStudent;

public class ViewByGenderServlet extends HttpServlet {

    @EJB
    private NewStudentFacadeLocal nsfl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String genderParam = request.getParameter("gender");
        Character gender = genderParam.charAt(0);
        
        List<NewStudent> students = nsfl.ViewByGender(gender); 

        request.setAttribute("students", students);
        RequestDispatcher dispatcher = request.getRequestDispatcher("ViewByGenderResults.jsp");
        dispatcher.forward(request, response);
    }
}