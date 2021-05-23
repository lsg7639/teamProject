package board.model;

import java.sql.Date;

public class Board {

	private Integer board_num; // 번호
	private String board_id; // 작성자
	private String board_password;
	private String board_title; // 글제목

	private String board_content; // 글내용
	private String board_file; // 첨부파일이름
	private Integer board_count; // 조회수
	private Date reg_date; // 등록일

	public Integer getBoard_num() {
		return board_num;
	}

	public void setBoard_num(Integer board_num) {
		this.board_num = board_num;
	}

	public String getBoard_id() {
		return board_id;
	}

	public void setBoard_id(String board_id) {
		this.board_id = board_id;
	}

	public String getBoard_title() {
		return board_title;
	}

	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}

	public String getBoard_content() {
		return board_content;
	}

	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

	public String getBoard_file() {
		return board_file;
	}

	public void setBoard_file(String board_file) {
		this.board_file = board_file;
	}

	public Integer getBoard_count() {
		return board_count;
	}

	public void setBoard_count(Integer board_count) {
		this.board_count = board_count;
	}

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

	public String getBoard_password() {
		return board_password;
	}

	public void setBoard_password(String board_password) {
		this.board_password = board_password;
	}

}
