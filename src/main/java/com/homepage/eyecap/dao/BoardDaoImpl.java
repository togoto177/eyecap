package com.homepage.eyecap.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.homepage.eyecap.model.Board;

@Repository
public class BoardDaoImpl implements BoardDao{
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public void board_insert(Board board) {
		sst.insert("boards.board_insert", board);	
		
	}

	@Override
	public Board board_read(Board board) {
		return sst.selectOne("boards.board_read", board);
	}
	
	@Override
	public List<Board> archave_list(Map<String, Object> paramMap) {
		return sst.selectList("boards.archave_list", paramMap);
	}

	@Override
	public int archave_cnt(Map<String, Object> paramMap) {
		return sst.selectOne("boards.archave_cnt", paramMap);
	}
	
	@Override
	public void board_update(Board board) {
		sst.update("boards.board_update", board);
	}
	
	@Override
	public void board_delete(Board board) {
		sst.update("boards.board_delete", board);
	}

	@Override
	public List<Board> fnq_list(Map<String, Object> paramMap) {
		return sst.selectList("boards.fnq_list", paramMap);
	}

	@Override
	public int fnq_cnt(Map<String, Object> paramMap) {
		return sst.selectOne("boards.fnq_cnt", paramMap);
	}
}
