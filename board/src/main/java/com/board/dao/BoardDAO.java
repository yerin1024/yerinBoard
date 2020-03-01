package com.board.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.board.dto.BoardDTO;

@Mapper
public interface BoardDAO {
	
	public int insertBoard(BoardDTO board);
	public List<BoardDTO> selectBoardList();
	public BoardDTO selectBoard(int seq);
	public int deleteBoard(int seq);
	public int updateBoard(BoardDTO board);
}
