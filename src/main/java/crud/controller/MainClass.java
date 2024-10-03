package crud.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import crud.dao.HibernateLogic;
import crud.dto.Student;

@Controller
public class MainClass {

	@Autowired
	public HibernateLogic dao;

	@GetMapping("/")
	public String home() {
		return "home.jsp";
	}

	@PostMapping("/addStudent")
	public String addStudent(@ModelAttribute Student std, ModelMap map) {
		dao.addStudent(std);
		map.put("success", "Data Saved Successfully");
		return "home.jsp";
	}

	@RequestMapping("/fetchStudent")
	public String fetchStudent(ModelMap map) {
	    map.put("std", dao.fetchAll());  
	    return "fetch-students.jsp";  
	}
	@GetMapping("/deleteStudent")
	public String deleteStudent(@RequestParam int id,ModelMap map) {
		dao.deleteRecord(id);
		map.put("success","Record Deleted Successlly");
		return "fetchStudent"; 
	}
	@GetMapping("/editStudent")
	public String edit(@RequestParam int id,ModelMap map) {
		map.put("student",dao.find(id));
		return "edit.jsp";
	}
	@PostMapping("/updateStudent")
	public String updateStudent(@ModelAttribute Student std, ModelMap map) {
		dao.update(std);
		map.put("success", "Data Updated Successfully");
		return "fetchStudent"; 
	}

}