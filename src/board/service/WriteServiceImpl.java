package board.service;

import board.dao.BoardDao;
import board.model.Board;
import member.dao.MemberDao;
import member.model.Member;


public class WriteServiceImpl implements WriteService{
	
	private BoardDao board;
	
	@Override
	public void insert(Board board) throws Exception {
		((WriteService) board).insert(board);
	}
}




