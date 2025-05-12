package za.ac.web;

import jakarta.ejb.EJB;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import za.ac.bl.NewStudentFacadeLocal;
import za.ac.entity.NewStudent;

public class EditStudentEnrollment extends HttpServlet {

    @EJB
    private NewStudentFacadeLocal nsfl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get parameters from form
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String qualification = request.getParameter("qualification");

        // Fetch existing student by ID
        NewStudent student = nsfl.find(id);

        if (student != null) {
            // Update only editable fields
            student.setName(name);
            student.setSurname(surname);
            student.setEmail(email);
            student.setPhone(phone);
            student.setQualification(qualification);

            // Persist updated student
            nsfl.edit(student);

            // Set updated attributes to show in confirmation page
            request.setAttribute("name", student.getName());
            request.setAttribute("surname", student.getSurname());
            request.setAttribute("id", student.getId());
            request.setAttribute("email", student.getEmail());
            request.setAttribute("highschool", student.getHighschool()); // Still showing original
            request.setAttribute("phone", student.getPhone());
            request.setAttribute("qualification", student.getQualification());

            RequestDispatcher disp = request.getRequestDispatcher("edit_student_result.jsp");
            disp.forward(request, response);

        } else {
            response.sendRedirect("search_student_enrollment.jsp?error=notfound");
        }
    }
}
