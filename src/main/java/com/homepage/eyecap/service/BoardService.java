package com.homepage.eyecap.service;


import java.util.List;
import java.util.Map;

import com.homepage.eyecap.model.Board;

public interface BoardService {
	//게시판 작성
	public void board_insert(Board board);
	//게시판 상세보기
	public Board board_read(Board board);
	//게시판 목록
	List<Board> archave_list(Map<String, Object> paramMap);
	//게시판 게시물 수
	public int archave_cnt(Map<String, Object> paramMap);
	//게시판 수정
	public void board_update(Board board);
	//게시글 삭제
	public void board_delete(Board board);
}
