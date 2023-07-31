package com.mycompany.springwebapp.dto;

import java.sql.Blob;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class Ch13Board {
	private int bno;
	private String btitle;
	private String bcontent;
	private Date bdate;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private String mid;
	private int bhitcount;
	//Client -> Controller   Client가 보내는 걸 Controller가 받기 위해서
	private MultipartFile battach;
	//Controller -> Service -> Dao -> DB
	private String battachoname;
	private String battachtype;
	//방법1: 서버 파일 시스템에 파일로 저장
	private String battachsname;
	//방법2: DB에 BLOB으로 저장
	//byte[] <- MyBatis -> BLOB    MyBatis를 이용하면 byte[]랑 Blob타입이랑 자동 변환, 알아서 해줌
	private byte[] battachdata;
}
