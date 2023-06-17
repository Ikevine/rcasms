package rw.ac.rca.webapp.web.students;


import rw.ac.rca.webapp.dao.StudentDAO;
import rw.ac.rca.webapp.dao.impl.StudentDAOImpl;
import rw.ac.rca.webapp.orm.Student;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class CreateStudent extends HttpServlet {
private StudentDAO studentDAO = StudentDAOImpl.getInstance();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pageDirection = request.getParameter("page");
        HttpSession httpSession = request.getSession();
        request.getRequestDispatcher("WEB-INF/createstudent.jsp").forward(request , response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        HttpSession httpSession = request.getSession();
        Student student = new Student();
        String fullName = request.getParameter("fullName");

        Date dateOfBirth = null;
        try {
            dateOfBirth = simpleDateFormat.parse(request.getParameter("birth"));
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
        String phoneNumber = request.getParameter("phone");
        Boolean inter = Boolean.valueOf(request.getParameter("inter"));
        Boolean part = Boolean.valueOf(request.getParameter("part"));
        Boolean repeat = Boolean.valueOf(request.getParameter("repeat"));
        student.setInternational(inter);
        student.setPartTime(part);
        student.setRepeating(repeat);
        student.setFullName(fullName);
        student.setDateOfBirth(dateOfBirth);
        student.setPhoneNumber(phoneNumber);

            try {

                Student s1 = studentDAO.saveStudent(student);
                request.setAttribute("s", "Student is created successfully");
                request.getRequestDispatcher("Liststudents.php").forward(request, response);

            } catch (Exception e) {
                request.setAttribute("f", "Fail to create student");
                request.getRequestDispatcher("WEB-INF/createstudent.jsp").forward(request, response);
            }
        }
    }

