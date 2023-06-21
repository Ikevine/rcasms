package rw.ac.rca.webapp.web.enrols;

import rw.ac.rca.webapp.dao.*;
import rw.ac.rca.webapp.dao.impl.*;
import rw.ac.rca.webapp.orm.*;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class CreateEnrol extends HttpServlet {

    private EnrolDAO enrolDAO = EnrilDAOImpl.getInstance();
    private AcademicYearDAO academicYearDAO = AcademcYearDAOImpl.getInstance();
    private StudentDAO studentDAO = StudentDAOImpl.getInstance();

    private EnrollmentLevelDAO enrollmentLevelDAO = EnroLeveLDAOImpl.getInstance();
    private SemesterDAO semesterDAO = SemesterDAOImpl.getInstance();
    private  CourseDAO courseDAO = CourseDAOImpl.getInstance();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String pageDirection = request.getParameter("page");
        HttpSession httpSession = request.getSession();
        request.getRequestDispatcher("WEB-INF/adenrol.jsp").forward(request , response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        HttpSession httpSession = request.getSession();

        Enrol enrol = new Enrol();
        int grade =Integer.parseInt(request.getParameter("grade"));

        Date enrolDate = null;

        try {
            enrolDate = simpleDateFormat.parse(request.getParameter("Edate"));
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
        int academic_year = Integer.parseInt(request.getParameter("academic"));
        int course_id = Integer.parseInt(request.getParameter("course"));
        int enrolLevel_id = Integer.parseInt(request.getParameter("enrolLevel"));
        int semester = Integer.parseInt(request.getParameter("semeter"));
        int student_id = Integer.parseInt(request.getParameter("student"));

        AcademicYear academicYear = academicYearDAO.getAcademicYearById(academic_year);
        Course course = courseDAO.getCourseById(course_id);
        EnrollmentLevel enrollmentLevel = enrollmentLevelDAO.getEnrolmentLevel(enrolLevel_id);
        Semester semester1 = semesterDAO.findBySemesterId(semester);
        Student student = studentDAO.getStudentById(student_id);

        enrol.setEnrollmentDate(enrolDate);
        enrol.setCourse(course);
        enrol.setAcademicYear(academicYear);
        enrol.setStudent(student);
        enrol.setGrade(grade);
        enrol.setEnrollmentLevel(enrollmentLevel);
        enrol.setSemester(semester1);

        try {

            Enrol E1 = enrolDAO.saveEnrol(enrol);
            request.setAttribute("s", "Student is created successfully");
            request.getRequestDispatcher("listenril.php").forward(request, response);

        } catch (Exception e) {
            request.setAttribute("f", "Fail to create student");
            request.getRequestDispatcher("WEB-INF/adenrol.jsp").forward(request, response);
        }
    }
}
