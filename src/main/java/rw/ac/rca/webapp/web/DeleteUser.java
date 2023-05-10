package rw.ac.rca.webapp.web;

import rw.ac.rca.webapp.dao.UserDAO;
import rw.ac.rca.webapp.dao.impl.UserDAOImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;


public class DeleteUser extends HttpServlet {
    public UserDAO userDAO = UserDAOImpl.getInstance();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));

        try{
            request.setAttribute(" success" ,"user cusseful deleted");
            userDAO.deleteUser(id);
            RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/users.jsp");
            dispatcher.forward(request, response);

        }
        catch (Exception e){
            request.setAttribute("fail " , "we fail to delete user");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
