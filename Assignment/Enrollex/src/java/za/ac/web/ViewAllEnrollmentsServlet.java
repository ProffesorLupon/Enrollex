package za.ac.web;

import jakarta.ejb.EJB;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.util.List;
import za.ac.bl.NewStudentFacadeLocal;
import za.ac.entity.NewStudent;

public class ViewAllEnrollmentsServlet extends HttpServlet {

    @EJB
    private NewStudentFacadeLocal nsfl;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<NewStudent> students = nsfl.findAll();

        request.setAttribute("students", students);
        RequestDispatcher dispatcher = request.getRequestDispatcher("viewAllEnrollmentsResult.jsp");
        dispatcher.forward(request, response);
    }
}
