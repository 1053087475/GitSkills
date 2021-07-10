package com.cjh.ssm.pojo;

import java.sql.Date;

public class WorkerInfo {
	
	boolean is_adm;
	int eid,dpid,workyear;
	String password,name,sex,dpname,position,nation,education,id_number,phone,mail,address,is_single;
	Date birth,entry_time;
	
	public int getWorkyear() {
		return workyear;
	}
	public void setWorkyear(int workyear) {
		this.workyear = workyear;
	}
	@Override
	public String toString() {
		return "WorkerInfo [is_adm=" + is_adm + ", eid=" + eid + ", dpid=" + dpid + ", workyear=" + workyear
				+ ", password=" + password + ", name=" + name + ", sex=" + sex + ", dpname=" + dpname + ", position="
				+ position + ", nation=" + nation + ", education=" + education + ", id_number=" + id_number + ", phone="
				+ phone + ", mail=" + mail + ", address=" + address + ", is_single=" + is_single + ", birth=" + birth
				+ ", entry_time=" + entry_time + "]";
	}
	public boolean isIs_adm() {
		return is_adm;
	}
	public void setIs_adm(boolean is_adm) {
		this.is_adm = is_adm;
	}
	public String getIs_single() {
		return is_single;
	}
	public void setIs_single(String is_single) {
		this.is_single = is_single;
	}
	
	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getDpid() {
		return dpid;
	}
	public void setDpid(int dpid) {
		this.dpid = dpid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getDpname() {
		return dpname;
	}
	public void setDpname(String dpname) {
		this.dpname = dpname;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getId_number() {
		return id_number;
	}
	public void setId_number(String id_number) {
		this.id_number = id_number;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public Date getEntry_time() {
		return entry_time;
	}
	public void setEntry_time(Date entry_time) {
		this.entry_time = entry_time;
	}
	
}
