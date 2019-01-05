package com.homepage.eyecap.dao;


import java.util.List;
import java.util.Map;

import com.homepage.eyecap.model.Board;


public interface BoardDao {

	public void board_insert(Board board);
	
	public Board board_read(Board board);
	
	public List<Board> archave_list(Map<String, Object> paramMap);

	public int archave_cnt(Map<String, Object> paramMap);
	
	public void board_update(Board board);
	
	public void board_delete(Board board);

	public List<Board> fnq_list(Map<String, Object> paramMap);

	public int fnq_cnt(Map<String, Object> paramMap);
}
