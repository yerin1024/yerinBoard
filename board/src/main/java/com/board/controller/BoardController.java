package com.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping(value="/board")
@Controller
public class BoardController {

	@RequestMapping(value="/list")
	public String board() {
		return "board";
	}
	
	@RequestMapping(value="/write")
	public String write() {
		return "write";
	}
	
	@RequestMapping(value="/update")
	public String update(int seq) {
		return "update/seq"+seq;
	}
}
