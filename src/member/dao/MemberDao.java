package member.dao;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.ibatis.common.resources.Resources;

import member.model.Member;

public class MemberDao {

	private static MemberDao instance;

	public static MemberDao getInstance() {
		if (instance == null) {
			instance = new MemberDao();
		}
		return instance;
	}

	public MemberDao() {
	}

	// myBatis 설정 이용하여 SqlSession 객체 생성 - mapper 이용하기 위한 준비 완료
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

	// id로 회원 정보 가져오기 - id 중복 확인 등에 사용
	public Member selectById(String id) {
		return (Member) session.selectOne("selectById", id);
	}

	/* 회원 등록 */
	public int insert(Member member) {
		return session.insert("insertMember", member);
	}

	/* 회원 LIST */
	public List<Member> selectListAll() throws SQLException {
		return session.selectList("selectListAll");
	}

	/* (list) 회원 삭제 */
	public int delete(String id) {
		return session.delete("deleteMember", id);
	}

	/* (list) 회원 체크 삭제 */
	public int chk_delete(String id) {
		return session.delete("chkdeleteMember", id);
	}
	
//	String[] arrIdx = paramMap.get("idx").toString().split(",");
//	for (int i=0; i<arrIdx.length; i++) {
//	    testMapper.delete(Integer.parseInt(arrIdx[i]));
//	}
	

	/* (view) 회원 id 선택시 이름으로 전체 조회 */
	public Member select(String name) throws SQLException {
		return (Member) session.selectOne("selectByName", name);
	}

	/* 로그인 */
	public int memberCheck(String id, String passwd) {
		int x = -1;
		String dbPasswd = (String) session.selectOne("selectByMember", id);
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

	// 회원탈퇴
	public int delete1(String id) {
		return session.delete("remove", id);
	}

}
