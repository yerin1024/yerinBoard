package com.board.dto;

public class BoardDTO {
	private int seq;
	private String writer;
	private String title;
	private String contents;
	
	public BoardDTO() {}
	public BoardDTO(int seq, String writer, String title, String contents) {
		super();
		this.seq = seq;
		this.writer = writer;
		this.title = title;
		this.contents = contents;
	}
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	
	@Override
	public String toString() {
		return "BoardDTO [seq=" + seq + ", writer=" + writer + ", title=" + title + ", contents=" + contents + "]";
	}
}
