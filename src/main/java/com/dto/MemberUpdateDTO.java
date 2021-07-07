package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("MemberUpdateDTO")
public class MemberUpdateDTO {
String staff_name;
String jumin_no;
String department_name;
String school_name;
String skill_name;
String grduate_day;
public MemberUpdateDTO() {
	super();
	// TODO Auto-generated constructor stub
}
public MemberUpdateDTO(String staff_name, String jumin_no, String department_name, String school_name,
		String skill_name, String grduate_day) {
	super();
	this.staff_name = staff_name;
	this.jumin_no = jumin_no;
	this.department_name = department_name;
	this.school_name = school_name;
	this.skill_name = skill_name;
	this.grduate_day = grduate_day;
}
@Override
public String toString() {
	return "MemberUpdateDTO [staff_name=" + staff_name + ", jumin_no=" + jumin_no + ", department_name="
			+ department_name + ", school_name=" + school_name + ", skill_name=" + skill_name + ", grduate_day="
			+ grduate_day + "]";
}
public String getStaff_name() {
	return staff_name;
}
public void setStaff_name(String staff_name) {
	this.staff_name = staff_name;
}
public String getJumin_no() {
	return jumin_no;
}
public void setJumin_no(String jumin_no) {
	this.jumin_no = jumin_no;
}
public String getDepartment_name() {
	return department_name;
}
public void setDepartment_name(String department_name) {
	this.department_name = department_name;
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
public String getGrduate_day() {
	return grduate_day;
}
public void setGrduate_day(String grduate_day) {
	this.grduate_day = grduate_day;
}

}
