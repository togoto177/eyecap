package com.homepage.eyecap.service;


import java.util.List;
import java.util.Map;

import com.homepage.eyecap.model.Board;
import com.homepage.eyecap.model.Pro_log;

public interface BoardService {
	
	//공통
	//게시판 작성
	public void board_insert(Board board);
	//게시판 상세보기
	public Board board_read(Board board);
	//게시판 수정
	public void board_update(Board board);
	//게시글 삭제
	public void board_delete(Board board);
	
	//서브 따로씀
	
	//아카이브 목록
	List<Board> archave_list(Map<String, Object> paramMap);
	//아카이브 게시물 수
	public int archave_cnt(Map<String, Object> paramMap);
	//fnq 목록
	List<Board> fnq_list(Map<String, Object> paramMap);
	//fnq
	public int fnq_cnt(Map<String, Object> paramMap);
	
	public void proHitInsert(Pro_log pro_log);
	public Pro_log proHitRead(Pro_log pro_log);
	public void proHitUpdate(Pro_log pro_log);
}
