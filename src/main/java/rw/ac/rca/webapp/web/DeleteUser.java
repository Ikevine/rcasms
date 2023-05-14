package rw.ac.rca.webapp.web;

import rw.ac.rca.webapp.dao.UserDAO;
import rw.ac.rca.webapp.dao.impl.UserDAOImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class DeleteUser extends HttpServlet {
    private UserDAO userDAO = UserDAOImpl.getInstance();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("hy" , "I think we good know");
        request.getRequestDispatcher("listuser.php").forward(request , response);
        int id =Integer.parseInt(request.getParameter("id"));
        try{
            userDAO.deleteUserById(id);
        }
        catch (Exception e){e.printStackTrace();}
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
