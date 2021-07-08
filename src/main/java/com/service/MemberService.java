package com.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.MemberDAO;
import com.dto.MemberDTO;
import com.dto.MemberUpdateDTO;

@Service
public class MemberService {

	@Autowired
	MemberDAO dao;

	public int memberinsert(HashMap<Object, Object> map) { //멤버등록 코드
		int n=dao.memberinsert(map);
		return n;
	}



	public int selectbystaffno(String name) { //이름을 가지고 멤버코드찾기
		// TODO Auto-generated method stub
		int n=dao.selectbystaffno(name);
		return n;
	}



	public int staffskillinsert(HashMap<Object, Object> map2) {
		int n=dao.staffskillinsert(map2);
		return n;
	}



	public List<MemberDTO> memberselect(HashMap<Object, Object> map) {
		// TODO Auto-generated method stub
		List<MemberDTO> list=dao.memberselect(map);
		return list;
	}



	public List<MemberDTO> selectall() {
		List<MemberDTO> list=dao.selectall();
		return list;
	}



	public List<MemberUpdateDTO> updatemember(String num) {
		// TODO Auto-generated method stub
		List<MemberUpdateDTO> list= dao.updatemember(num);
		return list;
	}



	public int memberupdate(HashMap<Object, Object> map) {
		int n=dao.memberupdate(map);
		return n;
	}
}
