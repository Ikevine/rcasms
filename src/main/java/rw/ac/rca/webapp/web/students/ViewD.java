package rw.ac.rca.webapp.web.students;

import rw.ac.rca.webapp.dao.AddressDAO;
import rw.ac.rca.webapp.dao.StudentDAO;
import rw.ac.rca.webapp.dao.impl.AddressDAOImpl;
import rw.ac.rca.webapp.dao.impl.StudentDAOImpl;
import rw.ac.rca.webapp.orm.Address;
import rw.ac.rca.webapp.orm.Student;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class ViewD extends HttpServlet {
    private StudentDAO studentDAO = StudentDAOImpl.getInstance();
    private AddressDAO addressDAO = AddressDAOImpl.getInstance();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        Student existing = studentDAO.getStudentById(id);
        request.setAttribute("exist" , existing);

        request.getRequestDispatcher("WEB-INF/viewd.jsp").forward(request , response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
