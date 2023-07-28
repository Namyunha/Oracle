package com.test.test2.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO {
	Connection con = null; // DB 접속 관련 처리를 위한 객체 
	PreparedStatement pstmt = null; // 쿼리문 전송 관련 처리를 위한 객체 
	ResultSet rs = null; // select 결과를 담기 위한 객체 
	
	// DB에 접속하기 위한 메서드. Repository 클래스의 모든 메서드가 시작전에 이 메서드를 호출해야 DB 작업 수행 가능.
	public Connection getConnection() throws Exception {
		// 이 메서드의 내용은 보통 평가지에서 제시함. (사용자 계정만 잘 구분하면 됨.)

		// 클래스를 로드 하는 역할(매개변수로 넘기는 클래스가 가지고 있는 필드, 메서드 종류, 클래스 이름 등을 JVM에 할당)
		// 인스턴스 생성 및 초기화를 해줌.
		// 컴파일 시점이 아니라 런타임 시점에 로딩을 할 수 있게 해줌.(DI랑 비슷한 역할)
		Class.forName("oracle.jdbc.OracleDriver"); // 사용할 DB 드라이버 로드
		// 접속할 DB 주소, 사용자 계정, 비밀번호
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "user1", "1234");
		return con;
	}
	
    public int getCustNo() throws Exception {
        con = getConnection();
        String sql = "SELECT COUNT(CUSTNO) FROM member_tbl_02";
        pstmt = con.prepareStatement(sql);
        rs = pstmt.executeQuery();
        int result = 100001;
        if (rs.next()) {
            int memberCount = rs.getInt(1);
            result = result + memberCount;
        }
        rs.close();
        pstmt.close();
        con.close();
        return result;
    }
	
	
}









