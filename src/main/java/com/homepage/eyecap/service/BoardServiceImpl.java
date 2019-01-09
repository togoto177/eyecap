package com.homepage.eyecap.service;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.homepage.eyecap.dao.BoardDao;
import com.homepage.eyecap.model.Board;
import com.homepage.eyecap.model.Pro_log;

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

	@Override
	public List<Board> fnq_list(Map<String, Object> paramMap) {
		return bd.fnq_list(paramMap);
	}

	@Override
	public int fnq_cnt(Map<String, Object> paramMap) {
		return bd.fnq_cnt(paramMap);
	}

	@Override
	public void proHitInsert(Pro_log pro_log) {
		bd.proHitInsert(pro_log);
	}

	@Override
	public Pro_log proHitRead(Pro_log pro_log) {
		return bd.proHitRead(pro_log);
	}

	@Override
	public void proHitUpdate(Pro_log pro_log) {
		bd.proHitUpdate(pro_log);
		
	}

}