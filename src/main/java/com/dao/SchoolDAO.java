package com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.SchoolDTO;

@Repository
public class SchoolDAO {
	@Autowired
	SqlSessionTemplate session;

	public List<SchoolDTO> select() {
		// TODO Auto-generated method stub
		List<SchoolDTO> list=session.selectList("select");
 		return list;
	}
}
