package com.homepage.eyecap.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.homepage.eyecap.dao.BoardDao;
import com.homepage.eyecap.dao.BoardFileDao;
import com.homepage.eyecap.model.BoardFile;

@Service("boardFileService")
public class BoardFileServiceImpl implements BoardFileService{
	
	@Autowired
	private BoardFileDao bfd;

	@Override
	public void file_insert(BoardFile boardFile) {
		bfd.file_insert(boardFile);
		
	}
	
	@Override
	public List<BoardFile> file_list(Map<String, Object> paramMap) {
		return bfd.file_list(paramMap);
	}
	
	@Override
	public void file_delete(BoardFile boardFile) {
		bfd.file_delete(boardFile);
		}

	@Override
	public void file_updateform_delete(BoardFile boardFile) {
		bfd.file_updateform_delete(boardFile);
		
	}

	@Override
	public void file_hit(String file_seq) {
		bfd.file_hit(file_seq);
	}


	
}
