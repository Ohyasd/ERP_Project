package com.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.MemberDTO;

@Repository
public class MemberDAO {
	@Autowired
	SqlSessionTemplate session;
	
	public int memberinsert(HashMap<Object, Object> map) {
		
		int n=session.insert("memberinsert",map);
		return n;
	}



	public int selectbystaffno(String name) {
		int n=session.selectOne("selectbystaffno",name);
		// TODO Auto-generated method stub
		return n;
	}



	public int staffskillinsert(HashMap<Object, Object> map2) {
		int n=session.insert("staffskillinsert",map2);
		return n;
	}



	public List<MemberDTO> memberselect(HashMap<Object, Object> map) {
		List<MemberDTO> list=session.selectList("memberselect",map);
		return list;
	}



	public List<MemberDTO> selectall() {
		List<MemberDTO> list=session.selectList("selectall");
		return list;
	}



	public List<MemberDTO> updatemember(String num) {
		// TODO Auto-generated method stub
		List<MemberDTO> list=session.selectList("updatemember",num);
		return list;
	}
}
