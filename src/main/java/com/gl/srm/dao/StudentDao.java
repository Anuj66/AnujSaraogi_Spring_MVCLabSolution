package com.gl.srm.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.gl.srm.model.Student;

@Component
public class StudentDao {

	@Autowired
	HibernateTemplate hibernateTemplate;
	
	@Transactional
	public List<Student> listStudents() {
		return hibernateTemplate.loadAll(Student.class);
	}
	
	@Transactional
	public Student getStudentById(int id) {
		return hibernateTemplate.get(Student.class, id);
	}
	
	@Transactional
	public void deleteStudent(int id) {
		hibernateTemplate.delete(hibernateTemplate.load(Student.class, id));
	}
	
	@Transactional
	public void addStudent(Student student) {
		hibernateTemplate.save(student);
	}
	
	@Transactional
	public void updateStudent(Student student) {
		hibernateTemplate.update(student);
	}
	
}
