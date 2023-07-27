package com.mycompany.springwebapp.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mycompany.springwebapp.dto.Ch13Board;

import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class Ch13BoardDaoOld {
	@Resource
	private SqlSessionTemplate sst;
	
	public void insert(Ch13Board board) {
		//xml을 선택하기위해서 
		sst.insert("com.mycompany.springwebapp.dao.mybatis.Ch13BoardDao.insert", board);
	}
	
	public List<Ch13Board> selectAll() {
		//Board.xml의 타입이랑 아이디랑 적어주면 된다
		List<Ch13Board> list = sst.selectList("com.mycompany.springwebapp.dao.mybatis.Ch13BoardDao.selectAll");
		for(Ch13Board board : list) {
			log.info(board.toString());
		}
		return list;
	}
	
	public void updateByBno() {
		List<Ch13Board> list = selectAll();
		Ch13Board board = list.get(0);
		board.setBtitle("변경된 제목");
		board.setBcontent("변경된 내용");
		
		sst.update("com.mycompany.springwebapp.dao.mybatis.Ch13BoardDao.updateByBno", board);
	}
	
	public void deleteByBno() {
		int bno = 0;
		sst.delete("com.mycompany.springwebapp.dao.mybatis.Ch13BoardDao.deleteByBno", bno);
	}
}
