package com.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.board.dao.BoardDAO;
import com.board.dto.BoardDTO;

@Service
public class BoardService {
	
	@Autowired
	BoardDAO bDao;
	
	public int insertBoard(BoardDTO board) throws Exception{
		return bDao.insertBoard(board);
	};
	
	public List<BoardDTO> selectBoardList() throws Exception{
		return bDao.selectBoardList();
	};
	
	public BoardDTO selectBoard(int seq) throws Exception{
		return bDao.selectBoard(seq);
	};
	
	public int deleteBoard(int seq) throws Exception{
		return bDao.deleteBoard(seq);
	};
	
	public int updateBoard(BoardDTO board) throws Exception{
		return bDao.updateBoard(board);
	};
}
