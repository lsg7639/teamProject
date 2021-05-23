package board.dao;

import java.io.IOException;
import java.io.Reader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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
	public int update (Board board) {
		return session.update("updateBoard", board);
	}
}