package com.trex.service;

import java.sql.SQLException;
import java.util.List;

import com.trex.dto.PerformGuidBoardVO;

public interface PerformGuidBoardService {
	List<PerformGuidBoardVO> getBoardList() throws SQLException;
	PerformGuidBoardVO getBoard(String pfg_code) throws SQLException;
	PerformGuidBoardVO getBoardForModify(String pfg_code) throws SQLException;
	
	void write(PerformGuidBoardVO PFGBoard) throws SQLException;
	void modify(PerformGuidBoardVO PFGBaord) throws SQLException;
	void remove(String pfg_code) throws SQLException;
	
/*	PerformVO getPF(String pf_code) throws SQLException;
	PerformScheduleVO getPFSH(String pf_code) throws SQLException;
	*/
	List<PerformGuidBoardVO> getBoardListByPF(String pf_code) throws SQLException;
	PerformGuidBoardVO getBoardByPFSH(String pfsh_code) throws SQLException;

}
