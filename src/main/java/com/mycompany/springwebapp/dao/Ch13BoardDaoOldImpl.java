package com.mycompany.springwebapp.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mycompany.springwebapp.dto.Ch13Board;
import com.mycompany.springwebapp.dto.Ch13Pager;

import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class Ch13BoardDaoOldImpl implements Ch13BoardDaoOld{
	@Resource
	private SqlSessionTemplate sst;
	
	public int insert(Ch13Board board) {
		//xml을 선택하기위해서 
		// com.mycompany.springwebapp.dao.Ch13BoardDao : Mapper XML 선택
		// insert : Mapper XML 안에 선언된 ID
		// 리턴값 : 실제 테이블에 반영된 행의 수
		int rows = sst.insert("com.mycompany.springwebapp.dao.Ch13BoardDao.insert", board);
		
		return rows;
	}
	
	public List<Ch13Board> selectByPage(Ch13Pager pager) {
		//Board.xml의 타입이랑 아이디랑 적어주면 된다
		
		List<Ch13Board> list = sst.selectList("com.mycompany.springwebapp.dao.Ch13BoardDao.selectAll");
		
		/*for(Ch13Board board : list) {
			log.info(board.toString());
		}*/
		
		return list;
	}
	
	public Ch13Board selectByBno(int bno) {
		//Board.xml의 타입이랑 아이디랑 적어주면 된다
		Ch13Board board = sst.selectOne("com.mycompany.springwebapp.dao.Ch13BoardDao.selectByBno", bno);
		
		return board;
	}
	
	public int updateByBno(Ch13Board board) {
		
		/*List<Ch13Board> list = selectAll();
		Ch13Board board = list.get(0);
		board.setBtitle("변경된 제목");
		board.setBcontent("변경된 내용");*/
		
		int rows = sst.update("com.mycompany.springwebapp.dao.Ch13BoardDao.updateByBno", board);
		
		return rows;
	}
	
	public int deleteByBno(int bno) {
		/*int bno = 0;*/
		int rows = sst.delete("com.mycompany.springwebapp.dao.Ch13BoardDao.deleteByBno", bno);
		
		return rows;
	}
	
	@Override
	public int count() {
		int count = sst.selectOne("com.mycompany.springwebapp.dao.Ch13BoardDao.count");
		return 0;
	}
}
