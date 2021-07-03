package com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.MemberDTO;

@Repository
public class MemberDAO {

	@Autowired
	SqlSessionTemplate template;

	public List<MemberDTO> memberselect() {
		// TODO Auto-generated method stub
		List<MemberDTO> dto=template.selectList("memberselect");
		return dto;
	}
	
	
	
}
