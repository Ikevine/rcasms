package rw.ac.rca.webapp.web.academicYear;

import rw.ac.rca.webapp.dao.AcademicYearDAO;
import rw.ac.rca.webapp.dao.impl.AcademcYearDAOImpl;
import rw.ac.rca.webapp.orm.AcademicYear;
import rw.ac.rca.webapp.orm.Address;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class UpdateAcademic extends HttpServlet {
    private static AcademicYearDAO academicYearDAO = AcademcYearDAOImpl.getInstance();
    public UpdateAcademic(){
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession httpSession = request.getSession();
        int id = Integer.parseInt(request.getParameter("id"));
        AcademicYear existing = academicYearDAO.getAcademicYearById(id);
        request.setAttribute("exist" , existing);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession httpSession = request.getSession();

        AcademicYear academicYear = new AcademicYear();
        String code = request.getParameter("Acode");
        String name = request.getParameter("Aname");
        try{
            academicYear.setCode(code);
            academicYear.setName(name);
            academicYearDAO.updateAcademicYear(academicYear);

            httpSession.setAttribute("success", "Created successfully");
            request.getRequestDispatcher("listacademic.php").forward(request , response);
        }
        catch (Exception e){
            httpSession.setAttribute("error", "Can't Create");
            request.getRequestDispatcher("WEB-INF/upacade.jsp").forward(request, response);
        }
    }
}
