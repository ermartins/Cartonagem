package br.com.allSystem.login.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.allSystem.login.dao.LoginDAO;

@Controller
public class MainController {

	@Autowired
	private LoginDAO loginDAO;
	
	
	@RequestMapping(value ="/")
	public String login(ModelAndView model) {
		
		
		return "index";
	}
}
