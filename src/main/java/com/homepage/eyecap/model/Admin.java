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
	
	//업체관리
	
	//업체관리 모델
		private int corp_seq;
		private String corp_no;
		private String corp_name;
		private String corp_country;
		private String corp_id;
		private String corp_division;
		private String corp_manager;
		private String corp_contact;
		private String corp_content;
		private String corp_register_id;
		private String corp_register_date;
		private String corp_update_id;
		private String corp_update_date;
		private String corp_etc;
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
		public int getCorp_seq() {
			return corp_seq;
		}
		public void setCorp_seq(int corp_seq) {
			this.corp_seq = corp_seq;
		}
		public String getCorp_no() {
			return corp_no;
		}
		public void setCorp_no(String corp_no) {
			this.corp_no = corp_no;
		}
		public String getCorp_name() {
			return corp_name;
		}
		public void setCorp_name(String corp_name) {
			this.corp_name = corp_name;
		}
		public String getCorp_country() {
			return corp_country;
		}
		public void setCorp_country(String corp_country) {
			this.corp_country = corp_country;
		}
		public String getCorp_id() {
			return corp_id;
		}
		public void setCorp_id(String corp_id) {
			this.corp_id = corp_id;
		}
		public String getCorp_division() {
			return corp_division;
		}
		public void setCorp_division(String corp_division) {
			this.corp_division = corp_division;
		}
		public String getCorp_manager() {
			return corp_manager;
		}
		public void setCorp_manager(String corp_manager) {
			this.corp_manager = corp_manager;
		}
		public String getCorp_contact() {
			return corp_contact;
		}
		public void setCorp_contact(String corp_contact) {
			this.corp_contact = corp_contact;
		}
		public String getCorp_content() {
			return corp_content;
		}
		public void setCorp_content(String corp_content) {
			this.corp_content = corp_content;
		}
		public String getCorp_register_id() {
			return corp_register_id;
		}
		public void setCorp_register_id(String corp_register_id) {
			this.corp_register_id = corp_register_id;
		}
		public String getCorp_register_date() {
			return corp_register_date;
		}
		public void setCorp_register_date(String corp_register_date) {
			this.corp_register_date = corp_register_date;
		}
		public String getCorp_update_id() {
			return corp_update_id;
		}
		public void setCorp_update_id(String corp_update_id) {
			this.corp_update_id = corp_update_id;
		}
		public String getCorp_update_date() {
			return corp_update_date;
		}
		public void setCorp_update_date(String corp_update_date) {
			this.corp_update_date = corp_update_date;
		}
		public String getCorp_etc() {
			return corp_etc;
		}
		public void setCorp_etc(String corp_etc) {
			this.corp_etc = corp_etc;
		}
		@Override
		public String toString() {
			return "Admin [ad_seq=" + ad_seq + ", ad_id=" + ad_id + ", ad_pw=" + ad_pw + ", ad_name=" + ad_name
					+ ", ad_contact=" + ad_contact + ", ad_email=" + ad_email + ", ad_register_date=" + ad_register_date
					+ ", ad_update_id=" + ad_update_id + ", ad_update_date=" + ad_update_date + ", ad_division="
					+ ad_division + ", ad_etc=" + ad_etc + ", ad_ori_password=" + ad_ori_password + ", corp_seq="
					+ corp_seq + ", corp_no=" + corp_no + ", corp_name=" + corp_name + ", corp_country=" + corp_country
					+ ", corp_id=" + corp_id + ", corp_division=" + corp_division + ", corp_manager=" + corp_manager
					+ ", corp_contact=" + corp_contact + ", corp_content=" + corp_content + ", corp_register_id="
					+ corp_register_id + ", corp_register_date=" + corp_register_date + ", corp_update_id="
					+ corp_update_id + ", corp_update_date=" + corp_update_date + ", corp_etc=" + corp_etc + "]";
		}
	
	
	
}
