package za.ac.web;

import jakarta.ejb.EJB;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import za.ac.bl.NewStudentFacadeLocal;
import za.ac.entity.NewStudent;

public class SearchEnrollmentServlet extends HttpServlet {

    @EJB
    private NewStudentFacadeLocal nsfl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String studentId = request.getParameter("studentId");
        NewStudent student = nsfl.find(studentId);

        if (student != null) {
            request.setAttribute("student", student);
            RequestDispatcher dispatcher = request.getRequestDispatcher("searchEnrollmentResult.jsp");
            dispatcher.forward(request, response);
        } else {
            // Redirect to themed "student not found" page
            response.sendRedirect("studentNotFound.jsp");
        }
    }
}
