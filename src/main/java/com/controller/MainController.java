

package com.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dto.SchoolDTO;
import com.service.SchoolService;


@Controller
public class MainController {
   
   @Autowired
   SchoolService service;
   
   @RequestMapping("/")
   public String main() {
      
	    List<SchoolDTO> list = service.select();
	    System.out.println("받아온값======="+list);
      return "staff_search_form";
      
   }
   
}
    
