package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("MemberDTO")
public class MemberDTO {
	int staff_no;
	String staff_name;
	String gendar;
	String department;
	String gradudate_day;
	
	public MemberDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MemberDTO(int staff_no, String staff_name, String gendar, String department, String gradudate_day) {
		super();
		this.staff_no = staff_no;
		this.staff_name = staff_name;
		this.gendar = gendar;
		this.department = department;
		this.gradudate_day = gradudate_day;
	}

	@Override
	public String toString() {
		return "MemberDTO [staff_no=" + staff_no + ", staff_name=" + staff_name + ", gendar=" + gendar + ", department="
				+ department + ", gradudate_day=" + gradudate_day + "]";
	}

	public int getStaff_no() {
		return staff_no;
	}

	public void setStaff_no(int staff_no) {
		this.staff_no = staff_no;
	}

	public String getStaff_name() {
		return staff_name;
	}

	public void setStaff_name(String staff_name) {
		this.staff_name = staff_name;
	}

	public String getGendar() {
		return gendar;
	}

	public void setGendar(String gendar) {
		this.gendar = gendar;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getGradudate_day() {
		return gradudate_day;
	}

	public void setGradudate_day(String gradudate_day) {
		this.gradudate_day = gradudate_day;
	}

	
}
