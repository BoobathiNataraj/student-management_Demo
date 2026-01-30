package com.example.studentmanagement.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.studentmanagement.model.Student;
import com.example.studentmanagement.repository.StudentRepository;
@Service
public class StudentService {
	
	/*
	 * private Map<Integer, Student> studentMap = new HashMap<>(); private int
	 * idCounter = 1;
	 * 
	 * public List<Student> getAllStudents() { return new
	 * ArrayList<>(studentMap.values()); }
	 */
    
    @Autowired
    private StudentRepository repo;

    public void saveStudent(Student student) {
        repo.save(student);
    }

    public List<Student> getAllStudents() {
        return repo.findAll();
    }
   
    public Student getStudentById(int id) {
        return repo.findById(id).orElseThrow(() -> new IllegalArgumentException("Invalid ID"));
    }
    
    public void updateStudent(Student student) {
        repo.save(student); 
    }
    
    public void deleteStudent(int id) {
    	repo.deleteById(id);
    }
    public void deleteStudents(int id) {
    	//repco.findAll
    	//repo.deleteById(id);
    }
    
}
