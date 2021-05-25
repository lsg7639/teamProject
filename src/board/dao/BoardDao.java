package board.dao;

import java.io.IOException;
import java.io.Reader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.ibatis.common.resources.Resources;

import board.model.Board;

public class BoardDao {

	private static BoardDao instance;

	private BoardDao() {
	}

	public static BoardDao getInstance() {
		if (instance == null)
			instance = new BoardDao();
		return instance;
	}

	private static SqlSession session;

	static {
		try {
			Reader reader = Resources.getResourceAsReader("configuration.xml");
			SqlSessionFactory sf = new SqlSessionFactoryBuilder().build(reader);
			session = sf.openSession(true);
			reader.close();
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}
	}

	// 게시판 글쓰기
	public int insert(Board board) {
		return session.insert("insertBoard", board);
	}

	/* 게시판 글 수정 */
	public int update(Board board) {
		return session.update("updateBoard", board);
	}

	/* 게시판 글  글제목 받아서 수정 */
	public Board selectBoard(String board_title) throws SQLException {
		return (Board) session.selectOne("selectByboard_title", board_title);
	}
	
	/* 게시판 글 삭제 */
	public int delete(Board board) {
		return session.delete("deleteBoard", board);
	}

	/* 관리자가 게시판 조회 */
	public List<Board> selectBoardList() throws SQLException {
		return session.selectList("selectBoardList");
	}

	/* 게시판 목록 조회 */
	public List<Board> selectAll() throws SQLException{
		return session.selectList("selectAll");
	}

	/* 관리자가 게시판 삭제 */
	public int deleteBoardList(String title) {
		return session.delete("deleteBoardList", title);
	}
}