package rw.ac.rca.webapp.web;

import rw.ac.rca.webapp.dao.UserDAO;
import rw.ac.rca.webapp.dao.impl.UserDAOImpl;
import rw.ac.rca.webapp.orm.User;
import rw.ac.rca.webapp.util.UserRole;
import rw.ac.rca.webapp.util.Util;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class AddUser extends HttpServlet {

    private final long serialVersionUID = 1L;
    private UserDAO userDAO = UserDAOImpl.getInstance();
    public AddUser() {
        super();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         String pageRedirect = request.getParameter("page");
         request.setAttribute("ah" , "bad luc");
         HttpSession httpSession = request.getSession();
         UserRole [] userRoles = UserRole.values();
         httpSession.setAttribute("userRoles" , userRoles);
         request.getRequestDispatcher("WEB-INF/adduser.jsp").forward(request , response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

       HttpSession httpSession = request.getSession();
       User user = new User();
       String username = request.getParameter("username");
       String fullname = request.getParameter("userfullname");
       String email = request.getParameter("email");
       String password = request.getParameter("password");
       String userrole = request.getParameter("userRole");
       UserRole userr = UserRole.valueOf(userrole);

       try{
           String hashpasw = Util.generateHashed512(password);
           user.setUsername(username);
           user.setFullName(fullname);
           user.setEmail(email);
           user.setUserRole(userr);
           user.setPassword(hashpasw);

           userDAO.saveUser(user);
           httpSession.setAttribute("success" , "well done my baby");
           request.getRequestDispatcher("WEB-INF/createuser.jsp").forward(request , response);

       }
       catch(Exception e ){
             httpSession.setAttribute("faill" , "Sorry you");
             request.getRequestDispatcher("WEB-INF/createuser.jsp").forward(request , response);
        }
    }
}
