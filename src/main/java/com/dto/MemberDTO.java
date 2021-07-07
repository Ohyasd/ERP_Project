package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("MemberDTO")
public class MemberDTO {
	int staff_no;
	String staff_name;
	String gendar;
	String department_name;
	String graduate_day;
	
	public MemberDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MemberDTO(int staff_no, String staff_name, String gendar, String department_name, String graduate_day) {
		super();
		this.staff_no = staff_no;
		this.staff_name = staff_name;
		this.gendar = gendar;
		this.department_name = department_name;
		this.graduate_day = graduate_day;
	}

	@Override
	public String toString() {
		return "MemberDTO [staff_no=" + staff_no + ", staff_name=" + staff_name + ", gendar=" + gendar
				+ ", department_name=" + department_name + ", graduate_day=" + graduate_day + "]";
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

	public String getDepartment_name() {
		return department_name;
	}

	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}

	public String getGraduate_day() {
		return graduate_day;
	}

	public void setGraduate_day(String graduate_day) {
		this.graduate_day = graduate_day;
	}

	
	
}
