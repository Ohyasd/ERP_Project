package com.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dto.MemberDTO;
import com.service.MemberService;

@Controller
public class MainController {
	
	@Autowired
	MemberService service;

	@RequestMapping("/")
	public String main() {
		List<MemberDTO> dto=service.memberselect();
		System.out.println("받은 값"+dto);
		return "main";
	}
}
