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

	// 글 등록 메소드
	public int insertBoard(Board board) {
		Connection conn = null;
		int result = 0;
		PreparedStatement pstmt = null;
		try {
			conn = getConnection();
			String str = " insert into board values ( " + "board_num_seq.nextval,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(str);
			pstmt.setString(1, board.getBoard_id());
			pstmt.setString(2, board.getBoard_password());
			pstmt.setString(3, board.getBoard_title());
			pstmt.setString(4, board.getBoard_content());
			pstmt.setString(5, board.getBoard_file());
			pstmt.setInt(6, board.getBoard_count());
			pstmt.setDate(7, board.getReg_date());

			result = pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException ex) {
				}
			}
			return result;
		}
	}

	// 전체 등록된 게시글 얻어내는 메소드
	public int getBoardCount() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int x = 0;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select count(*) from board");
			rs = pstmt.executeQuery();
			if (rs.next()) {
				x = rs.getInt(1);
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}
		return x;
	}

	// 등록된 게시글 정보를 수정시 사용하는 메소드
	public int updateBoard(Board board) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql, sql1;
		int result = 0;

		try {
			conn = getConnection();
			sql = "update board set board_title=?,board_content=? ";
			sql += ", board_file=? reg_date=?";

			sql1 = "update board set board_title=?,board_content=? ";
			sql1 += ", board_file=? reg_date=?";
			if (board.getBoard_file() == null) {
				pstmt = conn.prepareStatement(sql1);
				pstmt.setString(3, board.getBoard_file());

			} else {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(2, board.getBoard_content());
				pstmt.setString(3, board.getBoard_file());
			}
			pstmt.setString(1, board.getBoard_title());
			pstmt.setDate(4, board.getReg_date());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}
		return result;
	}

	// board_title에 해당하는 정보 삭제시 사용하는 메소드
	public int deleteBoard(String board_title) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int result = 0;
		String sql = "delete from board where board_title=?";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, board_title);
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}
		return result;
	}

	private Connection getConnection() {
		// TODO Auto-generated method stub
		return null;
	}

	/* 회원 LIST */
	public List<Member> selectAllfromMember() {
		return session.selectList("selectAllfromMember");
	}

	public int delete(String board_title) {
		return session.delete("AdminDeleteBoard", board_title);
	}

}
