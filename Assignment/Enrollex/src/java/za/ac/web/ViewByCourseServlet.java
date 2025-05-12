package za.ac.web;

import jakarta.ejb.EJB;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.util.List;
import za.ac.bl.NewStudentFacadeLocal;
import za.ac.entity.NewStudent;

public class ViewByCourseServlet extends HttpServlet {

    @EJB
    private NewStudentFacadeLocal nsfl;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String course = request.getParameter("course");
        List<NewStudent> students = nsfl.ViewByCourse(course);

        request.setAttribute("students", students);
        RequestDispatcher dispatcher = request.getRequestDispatcher("viewByCourseResult.jsp");
        dispatcher.forward(request, response);
    }
}
