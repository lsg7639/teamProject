package admin;

import java.io.IOException;
import java.io.Reader;
/*<<<<<<< HEAD*/
import java.sql.SQLException;
/*=======*/
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.ibatis.common.resources.Resources;

import board.model.Board;

import member.model.Member;

public class AdminDao {
	// 관리자 싱글톤
	private static AdminDao instance;

	public static AdminDao getInstance() {
		if (instance == null) {
			instance = new AdminDao();
		}
		return instance;
	}

	public AdminDao() {
	}

	// myBatis 설정 이용하여 SqlSession 객체 생성 - mapper 이용하기 위한 준비
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

	// 관리자 인증 메소드
	public int adminCheck(String id, String passwd) {
		int x = -1;
		String dbPasswd = (String) session.selectOne("selectByAdmin", id);
		if (dbPasswd != null) {
			if (dbPasswd.equals(passwd)) {
				x = 1; // 인증 성공
			} else {
				x = 0; // 비밀번호 틀림
			}
		} else {
			x = -1; // 해당 아이디 없음
		}
		return x;
	}


	/* 회원 LIST */
	public List<Member> selectAllfromMember() {
		return session.selectList("selectAllfromMember");
	}

	
	
	/* 관리자 게시판 수정 */
	public int updateAdminBoard(Board board) {
		return session.update("updateAdminBoard",board);
	}

	/* 관리자 게시판 삭제 */
	public int deleteAdminBoard(String board_title) {
		return session.delete("deleteAdminBoard",board_title);
	}
}
