package rw.ac.rca.webapp.web.students;

import rw.ac.rca.webapp.dao.AddressDAO;
import rw.ac.rca.webapp.dao.StudentDAO;
import rw.ac.rca.webapp.dao.impl.AddressDAOImpl;
import rw.ac.rca.webapp.dao.impl.StudentDAOImpl;
import rw.ac.rca.webapp.orm.Address;
import rw.ac.rca.webapp.orm.Student;
import rw.ac.rca.webapp.orm.User;
import rw.ac.rca.webapp.util.UserRole;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class UpdateStudent extends HttpServlet {
    private StudentDAO studentDAO = StudentDAOImpl.getInstance();
    private AddressDAO addressDAO = AddressDAOImpl.getInstance();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession httpSession = request.getSession();
        int id = Integer.parseInt(request.getParameter("id"));
        Student existing = studentDAO.getStudentById(id);
        request.setAttribute("exist" , existing);


        request.getRequestDispatcher("WEB-INF/upstudent.jsp").forward(request , response);
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

        //need to confirm that user actually exist
        Student exist = studentDAO.getStudentById(Integer.parseInt(request.getParameter("id")));

        //setting new configuration






        //   my checkbox here
        boolean inter = Boolean.parseBoolean(request.getParameter("inter"));
        boolean part = Boolean.parseBoolean(request.getParameter("part"));
        boolean repeat = Boolean.parseBoolean(request.getParameter("repeat"));
        String phoneNumber = request.getParameter("phone");

        Address address = new Address();
        String country = request.getParameter("country");
        String streetCode  = request.getParameter("street");
        String city = request.getParameter("city");
        String postcode = request.getParameter("postal");

        address.setCountry(country);
        address.setCity(city);
        address.setStreetAddress(streetCode);
        address.setPostalCode(postcode);

        student.setAddress(address);

        System.out.println("Kevine look at here please sweet" + address);
        try {
            exist.setAddress(address);
            exist.setPartTime(part);
            exist.setRepeating(repeat);
            exist.setFullName(fullName);
            exist.setPhoneNumber(phoneNumber);
            exist.setInternational(inter);

            //updating the address
            Student s1 = studentDAO.updateStudent(student);

            request.setAttribute("s", "Student is updated successfully");
            request.getRequestDispatcher("Liststudents.php").forward(request, response);

        } catch (Exception e) {
            request.setAttribute("f", "Fail to create student");
            request.getRequestDispatcher("WEB-INF/upstudent.jsp").forward(request, response);
        }
    }
}
