package org.study.home.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.study.home.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardMapper mapper;

	public BoardMapper getMapper() {
		return mapper;
	}

	public void setMapper(BoardMapper mapper) {
		this.mapper = mapper;
	}
}
