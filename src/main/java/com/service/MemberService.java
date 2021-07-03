package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.MemberDAO;
import com.dto.MemberDTO;

@Service
public class MemberService {

	@Autowired
	MemberDAO dao;

	public List<MemberDTO> memberselect() {
		// TODO Auto-generated method stub
		List<MemberDTO> dto=dao.memberselect();
		return dto;
	}
}
