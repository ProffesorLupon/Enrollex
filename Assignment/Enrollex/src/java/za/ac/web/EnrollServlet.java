package za.ac.web;

import jakarta.ejb.EJB;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import za.ac.bl.NewStudentFacadeLocal;
import za.ac.entity.NewStudent;

/**
 * Servlet for enrolling a student.
 */
public class EnrollServlet extends HttpServlet {

    @EJB
    private NewStudentFacadeLocal nsfl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String name = request.getParameter("name");
            String surname = request.getParameter("surname");
            String id = request.getParameter("id");
            String email = request.getParameter("email");
            String highschool = request.getParameter("highschool");
            String phone = request.getParameter("phone");
            String qualification = request.getParameter("qualification");
            int age = Integer.parseInt(request.getParameter("age"));
            Character gender = request.getParameter("gender").charAt(0);
            Date birthdate = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("birthdate"));
            Date creationDate = new Date(); 

            NewStudent student = createStudent(id, name, surname, gender, age, email, highschool, phone, qualification, birthdate, creationDate);
            nsfl.create(student);

            request.setAttribute("name", name);
            request.setAttribute("surname", surname);
            request.setAttribute("id", id);
            request.setAttribute("email", email);
            request.setAttribute("highschool", highschool);
            request.setAttribute("phone", phone);
            request.setAttribute("qualification", qualification);
            request.setAttribute("gender", gender);
            request.setAttribute("birthdate", birthdate);
            request.setAttribute("age", age);
            

            RequestDispatcher disp = request.getRequestDispatcher("enrollmentResult.jsp");
            disp.forward(request, response);

        } catch (ParseException | NullPointerException | NumberFormatException e) {
            e.printStackTrace(); 
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid form input.");
        }
    }

    private NewStudent createStudent(String id, String name, String surname, Character gender, int age, String email,
                                     String highschool, String phone, String qualification, Date birthdate, Date creationDate) {
        NewStudent student = new NewStudent();
        
        student.setId(id);
        student.setName(name);
        student.setSurname(surname);
        student.setGender(gender);
        student.setAge(age);
        student.setEmail(email);
        student.setHighschool(highschool);
        student.setPhone(phone);
        student.setQualification(qualification);
        student.setDob(birthdate);
        student.setCreationDate(creationDate);

        return student;
    }
}
