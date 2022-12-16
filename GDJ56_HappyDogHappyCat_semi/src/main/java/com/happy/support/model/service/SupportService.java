package com.happy.support.model.service;

import static com.happy.common.JDBCTemplate.close;
import static com.happy.common.JDBCTemplate.commit;
import static com.happy.common.JDBCTemplate.getConnection;
import static com.happy.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import com.happy.member.model.vo.Member;
import com.happy.support.model.dao.SupportDao;
import com.happy.support.model.vo.SupComment;
import com.happy.support.model.vo.SupPhoto;
import com.happy.support.model.vo.Support;


public class SupportService {
	
	private SupportDao sd = new SupportDao();
	
	public int insertSupport(Support s,List<SupPhoto> fileList) {
		Connection conn=getConnection();
		int result=sd.insertSupport(conn, s);
		int result2=0;
		if(result>0) {
			int supNo=sd.selectSupNo(conn);
			for(SupPhoto sp : fileList) {
				result2+=sd.insertVolPhoto(conn,supNo,sp);
			}
			if(result2==fileList.size())commit(conn);
			else rollback(conn);
			close(conn);
		}else {
			rollback(conn);
		}
		return result2;
	}

	
	public List<Support> selectSupportList(int cPage, int numPerpage){
		Connection conn=getConnection();
		List<Support> list = sd.selectSupportList(conn, cPage, numPerpage);
		close(conn);
		return list;
	}
	
	public int selectSupportCount() {
		Connection conn=getConnection();
		int result=sd.selectSupportCount(conn);
		close(conn);
		return result;
	}
	
	public Support selectSupport(int boardNo) {
		Connection conn = getConnection();
		Support s = sd.selectSupport(conn, boardNo);
		close(conn);
		return s;
	}
	
	public SupPhoto selectSupPhoto(int supBoardNo) {
		Connection conn = getConnection();
		SupPhoto sp = sd.selectSupPhoto(conn, supBoardNo);
		close(conn);
		return sp;
	}
	
	public int insertComment(SupComment sc) {
		Connection conn=getConnection();
		int result=sd.insertComment(conn,sc);
		if(result>0) commit(conn);
		else rollback(conn);
		close(conn);
		return result;
	}
	
	
	public List<SupComment> selectSupportComment(){
		Connection conn=getConnection();
		List<SupComment> list = sd.selectComment(conn);
		close(conn);
		return list;
	}
	
	public Member selectMember(int memberNo) {
		Connection conn = getConnection();
		Member m  = sd.selectMember(conn, memberNo);
		close(conn);
		return m;
		
	}
	
	
	public List<SupPhoto> selectSupPhoto2(int supBoardNo) {
		Connection conn = getConnection();
		List<SupPhoto> sp = sd.selectSupPhoto2(conn, supBoardNo);
		close(conn);
		return sp;
	}
}
