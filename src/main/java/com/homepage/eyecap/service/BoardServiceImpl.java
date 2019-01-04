package com.homepage.eyecap.service;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.homepage.eyecap.dao.BoardDao;
import com.homepage.eyecap.model.Board;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardDao bd;

	@Override
	public void board_insert(Board board) {
		bd.board_insert(board);
	}
	
	@Override
	public Board board_read(Board board) {
		return bd.board_read(board);
	}
	
	@Override
	public List<Board> archave_list(Map<String, Object> paramMap) {
		return bd.archave_list(paramMap);
	}

	@Override
	public int archave_cnt(Map<String, Object> paramMap) {
		return bd.archave_cnt(paramMap);
	}
	
	@Override
	public void board_update(Board board) {
		bd.board_update(board);
	}
	
	@Override
	public void board_delete(Board board) {
		bd.board_delete(board);
	}

}