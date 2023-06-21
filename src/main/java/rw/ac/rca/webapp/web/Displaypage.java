package rw.ac.rca.webapp.web;

import rw.ac.rca.webapp.util.UserRole;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class Displaypage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String pageRedirect = request.getParameter("direct");
        HttpSession httpSession = request.getSession();

//       switch case for matching
          switch (pageRedirect){
              case "student":
                  request.getRequestDispatcher("WEB-INF/viewstudent.jsp").forward(request,response);
                  break;

              case "parent":
                  request.getRequestDispatcher("WEB-INF/viewparent.jsp").forward(request,response);
                  break;

              case  "user":
                  request.getRequestDispatcher("WEB-INF/viewuser.jsp").forward(request,response);
                  break;

              case "semester":
                  request.getRequestDispatcher("WEB-INF/viewsemester.jsp").forward(request,response);
                  break;

              case "enrollevel":
                  request.getRequestDispatcher("WEB-INF/viewenrollevel.jsp").forward(request , response);
                  break;

              case "enroll":
                  request.getRequestDispatcher("WEB-INF/viewenroll.jsp").forward(request , response);
                  break;

              default:
                  break;

          }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
