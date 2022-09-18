package com.gl.srm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gl.srm.model.Student;
import com.gl.srm.service.StudentService;

@Controller
public class StudentController{
	
	@Autowired
	private StudentService studentService;
	
	@RequestMapping("/")
	public String viewHome(Model model) {
		List<Student> students = studentService.getAllStudents();
		model.addAttribute("students", students);
		return "home-page";
	}
	
	@RequestMapping("/deleteStudent/{id}")
	public String deleteStudent(Model model, @PathVariable int id) {
		studentService.deleteStudent(id);
		List<Student> students = studentService.getAllStudents();
		model.addAttribute("students", students);
		return "home-page";
	}
	
	@RequestMapping("/addStudent")
	public String addStudent(Model model) {
		Student student = new Student();
		model.addAttribute("student", student);
		return "add-student";
	}
	
	@RequestMapping("/processForm")
	public String processAddStudent(@ModelAttribute Student student, Model model) {
		studentService.saveStudent(student);
		List<Student> students = studentService.getAllStudents();
		model.addAttribute("students", students);
		return "home-page";
	}
	
	@RequestMapping("/editStudent/{id}")
	public String updateStudent(Model model, @PathVariable int id) {
		Student student = studentService.getStudentById(id);
		model.addAttribute("student", student);
		return "edit-student";
	}
	
	@RequestMapping("/processEditForm")
	public String processEditForm(@ModelAttribute Student student, Model model) {
		studentService.updateStudent(student);
		List<Student> students = studentService.getAllStudents();
		model.addAttribute("students", students);
		return "home-page";
	}

}
