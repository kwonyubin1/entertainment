package com.trex.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.trex.controller.Criteria;
import com.trex.dto.EPViewVO;
import com.trex.dto.EmployeeVO;
import com.trex.dto.GmemberVO;
import com.trex.dto.MemberVO;
import com.trex.dto.TroupeVO;

public class MemberDAOImpl  implements MemberDAO{
	
	private JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	@Autowired
	private SqlSession session;
	
		public void setSession(SqlSession session) {
			this.session=session;
		} 

	@Override
	public List<MemberVO> selectMemberList() throws SQLException {
		List<MemberVO> memberList=
				session.selectList("Member-Mapper.selectMemberList");
		return memberList;
	}
	
	@Override
	public List<MemberVO> selectMemberListlike(String code) throws SQLException {
		List<MemberVO> memberList=
				session.selectList("Member-Mapper.selectMemberListlike",code);
		return memberList;
	}

	@Override
	public List<MemberVO> selectMemberList(Criteria cri) throws SQLException {
		int offset = cri.getPageStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		List<MemberVO> memberList = null;
		
		memberList=session.selectList("Member-Mapper.selectSearchMemberList",cri,rowBounds);
		return memberList;
	}

	@Override
	public List<GmemberVO> selectGmemberList() throws SQLException {
		List<GmemberVO> gmemberList=
				session.selectList("Member-Mapper.selectGmemberList",null);
		return gmemberList;
	}
	

	@Override
	public List<GmemberVO> selectGmemberList(Criteria cri) throws SQLException {
		int offset = cri.getPageStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		List<GmemberVO> gmemberList = null;
		
		gmemberList=session.selectList("Member-Mapper.selectSearchMemberList",cri,rowBounds);
		return gmemberList;
	}


	@Override
	public List<TroupeVO> selectTroupeList() throws SQLException {
		List<TroupeVO> troupeList=
				session.selectList("Member-Mapper.selectTroupList",null);
		return troupeList;
	}

	@Override
	public List<TroupeVO> selectTroupeList(Criteria cri) throws SQLException {
		int offset = cri.getPageStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		List<TroupeVO> TroupeList = null;
		
		TroupeList=session.selectList("Member-Mapper.selectTroupeList",cri,rowBounds);
		return TroupeList;
	}


	@Override
	public void insertMember(MemberVO member) throws SQLException {
		session.update("Member-Mapper.insertMember",member);
		
	}

	@Override
	public void insertGmember(GmemberVO gmember) throws SQLException {
		session.update("Member-Mapper.insertGmember",gmember);
		
	}

	@Override
	public void insertTroupe(TroupeVO troupe) throws SQLException {
		session.update("Member-Mapper.insertTroupe",troupe);
		
	}

	@Override
	public void updateMember(MemberVO member) throws SQLException {
		session.update("Member-Mapper.updateMember",member);
		
	}

	@Override
	public void updateGmember(GmemberVO gmember) throws SQLException {
		session.update("Member-Mapper.updateMember",gmember);
		
	}

	@Override
	public void updateTroupe(TroupeVO troupe) throws SQLException {
		session.update("Member-Mapper.updateMember",troupe);
		
	}

	
	

	@Override
	public int selectMemberNextSeq() throws SQLException {
		int seq_num = session.selectOne("Member-Mapper.selectMemberNextSeq");
		return seq_num;
	}

	@Override
	public MemberVO selectMemberById(String mem_id) throws SQLException {
		MemberVO member = session.selectOne("Member-Mapper.selectMemberById", mem_id);
		return member;
	}
	
	@Override
	public MemberVO selectMemberByEmail(String mem_email) throws SQLException {
		MemberVO member = session.selectOne("Member-Mapper.selectMemberByEmail", mem_email);
		return member;
	}


	@Override
	public void GetKey(String mem_id, String key) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateAuthkey(MemberVO member) throws SQLException {

		session.update("Member-Mapper.updateAuthkey", member);
		
	}

	@Override
	public void updateAuthstatus(MemberVO member) throws SQLException {
		
		session.update("Member-Mapper.updateAuthstatus", member);
	}

	@Override
	public List<EPViewVO> selectEmployeeList() throws SQLException {
		List<EPViewVO> viewlist = session.selectList("Member-Mapper.selectEmployeeList");
		return viewlist;
	}

	@Override
	public List<EPViewVO> selectEmployeeList(Criteria cri) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insertEmployee(EmployeeVO employee) throws SQLException {
		session.update("Member-Mapper.insertEmployee", employee);
	}

	@Override
	public void updateEmployee(EmployeeVO employee) throws SQLException {
		session.update("Member-Mapper.updateEmployee",employee);

	}

	@Override
	public void deleteMember(String mem_code) throws SQLException {
		session.update("Member-Mapper.deleteMember", mem_code);
		
	}

	@Override
	public GmemberVO selectGmemberByCode(String mem_code) throws SQLException {
		GmemberVO gmember = session.selectOne("Member-Mapper.selectGmemberByCode",mem_code);
		return gmember;
	}

	@Override
	public EmployeeVO selectEmployee(String ep_code) {
		EmployeeVO employee = session.selectOne("Member-Mapper.selectEmployee",ep_code);
		return employee;
	}
	
	

	@Override
	public void updateMemberPwd(MemberVO member) throws SQLException {
		session.update("Member-Mapper.updateMemberPwd",member);
		
	}

	
}
