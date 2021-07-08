package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("MemberUpdateDTO")
public class MemberUpdateDTO {
int staff_no;
String staff_name;
String jumin_no1;
String jumin_no2;
String department_name;
int department_code;
String school_name;
String skill_name;
String graduate_day;
String gendar;
public MemberUpdateDTO() {
	super();
	// TODO Auto-generated constructor stub
}
public MemberUpdateDTO(int staff_no, String staff_name, String jumin_no1, String jumin_no2, String department_name,
		int department_code, String school_name, String skill_name, String graduate_day, String gendar) {
	super();
	this.staff_no = staff_no;
	this.staff_name = staff_name;
	this.jumin_no1 = jumin_no1;
	this.jumin_no2 = jumin_no2;
	this.department_name = department_name;
	this.department_code = department_code;
	this.school_name = school_name;
	this.skill_name = skill_name;
	this.graduate_day = graduate_day;
	this.gendar = gendar;
}
@Override
public String toString() {
	return "MemberUpdateDTO [staff_no=" + staff_no + ", staff_name=" + staff_name + ", jumin_no1=" + jumin_no1
			+ ", jumin_no2=" + jumin_no2 + ", department_name=" + department_name + ", department_code="
			+ department_code + ", school_name=" + school_name + ", skill_name=" + skill_name + ", graduate_day="
			+ graduate_day + ", gendar=" + gendar + "]";
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
public String getJumin_no1() {
	return jumin_no1;
}
public void setJumin_no1(String jumin_no1) {
	this.jumin_no1 = jumin_no1;
}
public String getJumin_no2() {
	return jumin_no2;
}
public void setJumin_no2(String jumin_no2) {
	this.jumin_no2 = jumin_no2;
}
public String getDepartment_name() {
	return department_name;
}
public void setDepartment_name(String department_name) {
	this.department_name = department_name;
}
public int getDepartment_code() {
	return department_code;
}
public void setDepartment_code(int department_code) {
	this.department_code = department_code;
}
public String getSchool_name() {
	return school_name;
}
public void setSchool_name(String school_name) {
	this.school_name = school_name;
}
public String getSkill_name() {
	return skill_name;
}
public void setSkill_name(String skill_name) {
	this.skill_name = skill_name;
}
public String getGraduate_day() {
	return graduate_day;
}
public void setGraduate_day(String graduate_day) {
	this.graduate_day = graduate_day;
}
public String getGendar() {
	return gendar;
}
public void setGendar(String gendar) {
	this.gendar = gendar;
}


}
