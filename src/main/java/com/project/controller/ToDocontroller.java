package com.project.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.model.ToDo;
import com.project.repository.todoRepo;

@Controller
public class ToDocontroller
{

	@Autowired
	todoRepo to;
	
	
	@RequestMapping("/")
	public String home()
	{
		return "login.jsp";
	}
	
	@RequestMapping("/login")
	public String lists(@ModelAttribute ToDo ob)
	{
		to.save(ob);
		return "list.jsp";
	}
	
	@RequestMapping("/fetch")
	public String datafetch(Model data)
	{
		List<ToDo> al=to.findAll();
		System.out.println(al);
		data.addAttribute("data",al);
		return "DataFetch.jsp";
	}
	
	@RequestMapping("/Delete/{id}")
	public String delete(@PathVariable int id) 
	{
		to.deleteById(id);
		return "redirect:/fetch";
	}
	
	@RequestMapping("{id}")
	public String update(@PathVariable int id , Model m)
	{
		ToDo ob=to.findById(id).orElse(null);
		m.addAttribute("data",ob);
		return "update.jsp";
	}
	
	@RequestMapping("/up/{id}")
	public String update(@PathVariable int id,@ModelAttribute ToDo ee)
	{
		ToDo ob=to.findById(id).orElse(null);
		
		if(ob!=null)
		{
			ob.setTitle(ee.getTitle());
			ob.setStatus(ee.getStatus());
			ob.setDate(ee.getDate());
			
			to.save(ob);
		}
		return "redirect:/fetch";
	}
}
