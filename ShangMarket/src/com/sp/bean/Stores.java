package com.sp.bean;

public class Stores {
	private Integer s_id;
	private String s_name;
	private String s_address;
	private String s_tel;
	private Integer u_id;
	private String s_head_old;
	private String s_head_new;
	private String s_head_status;
	
	public String getS_name() {
		return s_name;
	}
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}
	public String getS_address() {
		return s_address;
	}
	public void setS_address(String s_address) {
		this.s_address = s_address;
	}
	public String getS_tel() {
		return s_tel;
	}
	public void setS_tel(String s_tel) {
		this.s_tel = s_tel;
	}
	
	public Integer getS_id() {
		return s_id;
	}
	public void setS_id(Integer s_id) {
		this.s_id = s_id;
	}
	public Integer getU_id() {
		return u_id;
	}
	public void setU_id(Integer u_id) {
		this.u_id = u_id;
	}
	public String getS_head_old() {
		return s_head_old;
	}
	public void setS_head_old(String s_head_old) {
		this.s_head_old = s_head_old;
	}
	public String getS_head_new() {
		return s_head_new;
	}
	public void setS_head_new(String s_head_new) {
		this.s_head_new = s_head_new;
	}
	public String getS_head_status() {
		return s_head_status;
	}
	public void setS_head_status(String s_head_status) {
		this.s_head_status = s_head_status;
	}

}
