

package com.controller;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dto.MemberDTO;
import com.service.MemberService;


@Controller
public class MainController {
   
   @Autowired
   MemberService service;
   
   @RequestMapping("/")
   public String main() { //첫시작 메인으로 가주는 코드
      return "staff_search_form";
   }
   
   @RequestMapping(value = "/selectall")
   String selectall(HttpServletRequest request) {
	   System.out.println("전부검색쓰~~~~~");
	   
	   List<MemberDTO> list=service.selectall();
		  System.out.println("전체검색리스트 뽑아오기===="+list);
		  request.setAttribute("list", list);
		
		 return "staff_search_form";
		  
	   
   }
   
	
	  @RequestMapping(value="/select",method=RequestMethod.POST) //정보검색 코드 
	 String select(String name,String sex,int department,int school,int
	 tech,String date,HttpServletRequest request)
	  { 
		  
		  System.out.println("받아오는 이름"+name);
		  System.out.println("받아오는 성별"+sex);
		  System.out.println("받아오는 부서"+department);
		  System.out.println("받아오는 학교"+school);
		  System.out.println("받아오는 기술"+tech);
		  System.out.println("받아오는 날짜"+date);
	  HashMap<Object, Object> map = new HashMap<Object, Object>();
	  map.put("name",name);
	  map.put("gendar",sex);
	  map.put("department",department);
	  map.put("school",school);
	  map.put("tech",tech);
	  map.put("date",date);
	  System.out.println("맵에 넣은 거"+map);
	  
	  List<MemberDTO> list=service.memberselect(map);
	  System.out.println("검색리스트 뽑아오기===="+list);
	  request.setAttribute("list", list);
	
	  return "staff_search_form";
	  }
	 
   
   @RequestMapping("/insertpage") //등록팝업창 가는코드
   String insertpage() {
	   return "staff_input_form";
   }
   @RequestMapping("/updatepage") //수정/삭제 팝업창으로 해당 사원값받아서 넘겨주는 코드
   String updatepage(String num){
	   System.out.println("받은 num값"+num);
	   List<MemberDTO> list= service.updatemember(num);
	return "";
	   //return "staff_updel_form";   
   }
  
   
   @RequestMapping(value="/insert",method=RequestMethod.POST) //회원등록 코드
	 String insert(String name,String jumin1,String jumin2,String department,String school,String
	 tech,String date)
	  { 
       int jumin02=Integer.parseInt(jumin2);
	   int dc=Integer.parseInt(department);
	   int sc=Integer.parseInt(school);
	   System.out.println(jumin1+" "+jumin02+" "+dc+" "+sc);
	   HashMap<Object, Object> map = new HashMap<Object, Object>();
	   map.put("name", name);
	   map.put("jumin1",jumin1);
	   map.put("jumin2",jumin02);
	   map.put("department",dc);
	   map.put("school",sc);
	   map.put("tech",tech);
	   map.put("date",date);
	  

	  int n=service.memberinsert(map);
	  System.out.println("memberinsert 된 개수"+n);
	  
	  
	   int staff_no =service.selectbystaffno(name); //멤버코드가져오기
	   System.out.println("멤버코드가져오기==="+staff_no);
	   
	   System.out.println("스킬코드====="+tech);
	   
	   HashMap<Object, Object> map2 = new HashMap<Object, Object>();
	   map2.put("staffno",staff_no);
	   map2.put("tech",tech);
   
	   int n2=service.staffskillinsert(map2); //staff_skill테이블에 insert문
	  System.out.println("staff테이블에 넣은 insert갯수"+n2);
	  
	  
	  return "staff_input_form";
	  
	  }
   
   
   
}
    
