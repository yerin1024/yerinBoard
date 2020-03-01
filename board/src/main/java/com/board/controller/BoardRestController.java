package com.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.board.dto.BoardDTO;
import com.board.service.BoardService;

@RequestMapping(value="/boardR")
@RestController
public class BoardRestController {
	
	@Autowired
	BoardService bService;
	
	@RequestMapping(method=RequestMethod.POST)
	public int insertBoard(BoardDTO board) throws Exception {
		return bService.insertBoard(board);
	}
	
	@RequestMapping(method=RequestMethod.GET)
	public List<BoardDTO> selectBoardList() throws Exception{
		return bService.selectBoardList();
	}
	
	@RequestMapping(value="/board/{seq}",method=RequestMethod.GET)
	public BoardDTO selectBoard( @PathVariable("seq") int seq) throws Exception{
		return bService.selectBoard(seq);
	}
	
	@RequestMapping(value="/board/{seq}", method=RequestMethod.DELETE)
	public int deleteBoard( @PathVariable("seq") int seq) throws Exception{
		return bService.deleteBoard(seq);
	}
	
	@RequestMapping(method=RequestMethod.PUT)
	public int updateBoard(BoardDTO board) throws Exception{
		return bService.updateBoard(board);
	};
}
