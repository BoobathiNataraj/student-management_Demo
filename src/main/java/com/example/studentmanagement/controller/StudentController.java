package com.example.studentmanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.studentmanagement.model.Student;
import com.example.studentmanagement.service.StudentService;




@Controller
@RequestMapping("/student")
public class StudentController {

	@Autowired
    private StudentService studentService;

    @GetMapping("/")
    public String index(Model model) {
        //model.addAttribute("students", studentService.getAllStudents());
        return "index";
    }
    
    @GetMapping("/addStudent")
    public String addStudentPage() {
        return "addstudent";
    }
    
    @PostMapping("/saveStudent")
    @ResponseBody
    public String saveStudent(@RequestBody Student student) {
        studentService.saveStudent(student);
        return "Student saved successfully in DB";
    }
    
    @GetMapping("/list")
    public String listStudents(Model model) {
        List<Student> students = studentService.getAllStudents();
        model.addAttribute("students", students);
        return "studentList"; 
    }
    
    @GetMapping("/update/{id}")
    public String showUpdateForm(@PathVariable("id") int id, Model model) {
        Student student = studentService.getStudentById(id);
        model.addAttribute("student", student);
        return "updateStudent"; 		
    }
     
    @PostMapping("/update")
    public String updateStudent(@ModelAttribute Student student) {
    	studentService.updateStudent(student); 
        return "redirect:/list"; 
    }
    
    @GetMapping("/delete/{id}")
    public String deleteStudent(@PathVariable int id) {
        studentService.deleteStudent(id);
        return "redirect:/list";  
    }
    
    
    
    @GetMapping("/report")
    public String studentReport(Model model) {
        model.addAttribute("students", studentService.getAllStudents());
        return "studentReport";
    }
    
    @GetMapping("/detail")
    public String studentDetail(Model model) {
    	List<Student> list=studentService.getAllStudents();
    	//list.stream()..
        model.addAttribute("students", studentService.getAllStudents());
        return "studentReport";
    }
}
