package com.sp.bean;

import java.util.Date;

public class Products {
	private int p_id;
	private String p_name;
	private double p_price;
	private String p_local;
	private String p_info;
	private int p_inventory;
	private String p_status;
	private int s_id;
	private int sub_id;
	public int getP_id() {
		return p_id;
	}
	public void setP_id(int p_id) {
		this.p_id = p_id;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public double getP_price() {
		return p_price;
	}
	public void setP_price(double p_price) {
		this.p_price = p_price;
	}
	public String getP_local() {
		return p_local;
	}
	public void setP_local(String p_local) {
		this.p_local = p_local;
	}
	public String getP_info() {
		return p_info;
	}
	public void setP_info(String p_info) {
		this.p_info = p_info;
	}
	public int getP_inventory() {
		return p_inventory;
	}
	public void setP_inventory(int p_inventory) {
		this.p_inventory = p_inventory;
	}
	public String getP_status() {
		return p_status;
	}
	public void setP_status(String p_status) {
		this.p_status = p_status;
	}
	public int getS_id() {
		return s_id;
	}
	public void setS_id(int s_id) {
		this.s_id = s_id;
	}
	public int getSub_id() {
		return sub_id;
	}
	public void setSub_id(int sub_id) {
		this.sub_id = sub_id;
	}

}
