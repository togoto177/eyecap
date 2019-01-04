package com.homepage.eyecap.model;

public class Admin {
	private int ad_seq;
	private String ad_id;
	private String ad_pw;
	private String ad_name;
	private String ad_contact; //연락처
	private String ad_email;
	private String ad_register_date; //입사일
	private String ad_update_id;
	private String ad_update_date;
	private String ad_division; //직급
	private String ad_etc;
	
	private String ad_ori_password;

	public int getAd_seq() {
		return ad_seq;
	}

	public void setAd_seq(int ad_seq) {
		this.ad_seq = ad_seq;
	}

	public String getAd_id() {
		return ad_id;
	}

	public void setAd_id(String ad_id) {
		this.ad_id = ad_id;
	}

	public String getAd_pw() {
		return ad_pw;
	}

	public void setAd_pw(String ad_pw) {
		this.ad_pw = ad_pw;
	}

	public String getAd_name() {
		return ad_name;
	}

	public void setAd_name(String ad_name) {
		this.ad_name = ad_name;
	}

	public String getAd_contact() {
		return ad_contact;
	}

	public void setAd_contact(String ad_contact) {
		this.ad_contact = ad_contact;
	}

	public String getAd_email() {
		return ad_email;
	}

	public void setAd_email(String ad_email) {
		this.ad_email = ad_email;
	}

	public String getAd_register_date() {
		return ad_register_date;
	}

	public void setAd_register_date(String ad_register_date) {
		this.ad_register_date = ad_register_date;
	}

	public String getAd_update_id() {
		return ad_update_id;
	}

	public void setAd_update_id(String ad_update_id) {
		this.ad_update_id = ad_update_id;
	}

	public String getAd_update_date() {
		return ad_update_date;
	}

	public void setAd_update_date(String ad_update_date) {
		this.ad_update_date = ad_update_date;
	}

	public String getAd_division() {
		return ad_division;
	}

	public void setAd_division(String ad_division) {
		this.ad_division = ad_division;
	}

	public String getAd_etc() {
		return ad_etc;
	}

	public void setAd_etc(String ad_etc) {
		this.ad_etc = ad_etc;
	}

	public String getAd_ori_password() {
		return ad_ori_password;
	}

	public void setAd_ori_password(String ad_ori_password) {
		this.ad_ori_password = ad_ori_password;
	}

	@Override
	public String toString() {
		return "Admin_tb [ad_seq=" + ad_seq + ", ad_id=" + ad_id + ", ad_pw=" + ad_pw + ", ad_name=" + ad_name
				+ ", ad_contact=" + ad_contact + ", ad_email=" + ad_email + ", ad_register_date=" + ad_register_date
				+ ", ad_update_id=" + ad_update_id + ", ad_update_date=" + ad_update_date + ", ad_division="
				+ ad_division + ", ad_etc=" + ad_etc + ", ad_ori_password=" + ad_ori_password + "]";
	}

	
	
}
