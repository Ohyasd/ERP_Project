package com.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.MemberDTO;
import com.dto.MemberUpdateDTO;

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



	public List<MemberUpdateDTO> updatemember(String num) {
		// TODO Auto-generated method stub
		List<MemberUpdateDTO> list=session.selectList("updatememberselect",num);
		return list;
	}



	public int memberupdate(HashMap<Object, Object> map) {
		int n=session.update("memberupdate",map);
		int n2=session.update("staffskillupdate",map);
		return n;
	}
}
