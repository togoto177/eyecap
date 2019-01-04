package com.homepage.eyecap.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.homepage.eyecap.model.BoardFile;

@Repository("boardFileDao")
public class BoardFileDaoImpl implements BoardFileDao {
	
	@Inject
    SqlSession SqlSession;

	@Override
	public void file_insert(BoardFile boardFile) {
		SqlSession.insert("boardFiles.file_insert", boardFile);
		
	}

	
}