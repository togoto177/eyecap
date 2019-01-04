package com.homepage.eyecap.model;

import java.sql.Date;

public class Board {
	
	//게시판 전체 공통 부분
	
	private int board_seq;
	private String board_division;
	private String board_notice;
	private String board_title;
	private String board_content;
	private int board_hit;
	private String board_use_yn;
	private String board_register_id;
	private Date board_register_date;
	private String board_update_id;
	private Date board_update_date;
	private String board_etc;
	
	
	private String file_ori_name; //file_tb에서 파일명 가져와서 뿌려줌
	private String file_sub_name; //file_tb에서 파일명 가져와서 뿌려줌
	private String file_path;     //file_tb에서 파일명 가져와서 뿌려줌
	private String file_size;     //file_tb에서 파일명 가져와서 뿌려줌
	
	public int getBoard_seq() {
		return board_seq;
	}
	public void setBoard_seq(int board_seq) {
		this.board_seq = board_seq;
	}
	public String getBoard_division() {
		return board_division;
	}
	public void setBoard_division(String board_division) {
		this.board_division = board_division;
	}
	public String getBoard_notice() {
		return board_notice;
	}
	public void setBoard_notice(String board_notice) {
		this.board_notice = board_notice;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public int getBoard_hit() {
		return board_hit;
	}
	public void setBoard_hit(int board_hit) {
		this.board_hit = board_hit;
	}
	public String getBoard_use_yn() {
		return board_use_yn;
	}
	public void setBoard_use_yn(String board_use_yn) {
		this.board_use_yn = board_use_yn;
	}
	public String getBoard_register_id() {
		return board_register_id;
	}
	public void setBoard_register_id(String board_register_id) {
		this.board_register_id = board_register_id;
	}
	public Date getBoard_register_date() {
		return board_register_date;
	}
	public void setBoard_register_date(Date board_register_date) {
		this.board_register_date = board_register_date;
	}
	public String getBoard_update_id() {
		return board_update_id;
	}
	public void setBoard_update_id(String board_update_id) {
		this.board_update_id = board_update_id;
	}
	public Date getBoard_update_date() {
		return board_update_date;
	}
	public void setBoard_update_date(Date board_update_date) {
		this.board_update_date = board_update_date;
	}
	public String getBoard_etc() {
		return board_etc;
	}
	public void setBoard_etc(String board_etc) {
		this.board_etc = board_etc;
	}
	public String getFile_ori_name() {
		return file_ori_name;
	}
	public void setFile_ori_name(String file_ori_name) {
		this.file_ori_name = file_ori_name;
	}
	public String getFile_sub_name() {
		return file_sub_name;
	}
	public void setFile_sub_name(String file_sub_name) {
		this.file_sub_name = file_sub_name;
	}
	public String getFile_path() {
		return file_path;
	}
	public void setFile_path(String file_path) {
		this.file_path = file_path;
	}
	public String getFile_size() {
		return file_size;
	}
	public void setFile_size(String file_size) {
		this.file_size = file_size;
	}
	@Override
	public String toString() {
		return "Board [board_seq=" + board_seq + ", board_division=" + board_division + ", board_notice=" + board_notice
				+ ", board_title=" + board_title + ", board_content=" + board_content + ", board_hit=" + board_hit
				+ ", board_use_yn=" + board_use_yn + ", board_register_id=" + board_register_id
				+ ", board_register_date=" + board_register_date + ", board_update_id=" + board_update_id
				+ ", board_update_date=" + board_update_date + ", board_etc=" + board_etc + ", file_ori_name="
				+ file_ori_name + ", file_sub_name=" + file_sub_name + ", file_path=" + file_path + ", file_size="
				+ file_size + "]";
	}
	
	

}
