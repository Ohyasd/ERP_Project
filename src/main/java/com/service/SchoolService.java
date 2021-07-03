package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.SchoolDAO;
import com.dto.SchoolDTO;

@Service
public class SchoolService {

	@Autowired
	SchoolDAO dao;

	public List<SchoolDTO> select() {
		// TODO Auto-generated method stub
		List<SchoolDTO> list= dao.select();
		return list;
	}
}
