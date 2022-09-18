package com.gl.srm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.gl.srm.dao.StudentDao;
import com.gl.srm.model.Student;

@Component
@Service
public class StudentService {
	
	@Autowired
	private StudentDao studentDao;

	public List<Student> getAllStudents() {
		return studentDao.listStudents();
	}
	
	public void deleteStudent(int id) {
		studentDao.deleteStudent(id);
	}
	
	public void saveStudent(Student student) {
		studentDao.addStudent(student);
	}
	
	public void updateStudent(Student student) {
		studentDao.updateStudent(student);
	}
	
	public Student getStudentById(int id) {
		return studentDao.getStudentById(id);
	}
	
}
