package rw.ac.rca.webapp.dao;

import rw.ac.rca.webapp.orm.Student;

import java.util.List;
/*
*author kevine
*/
public interface StudentDAO {

    public Student saveStudent(Student student);
    public Student updateStudent(Student student);
    public boolean deleteStudent (Student student);
    public  Student getStudentById(int id);
    public List<Student> getAllStudents();
}
