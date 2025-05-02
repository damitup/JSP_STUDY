package login;

import java.sql.*;
import javax.sql.*;
import javax.naming.*;
import javax.sql.DataSource;

public class UserDAO {

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public UserDAO() {
		//System.out.println("생성 체크");
		
		try{
			
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/MysqlDB");
			conn = ds.getConnection();
			
			//System.out.println("<h3>연결되었습니다.</h3>");
			
		} catch(Exception e){
			//System.out.println("<h3>연결에 실패했습니다.</h3>");
			e.printStackTrace();
			}

	}	
	
	public void conClose() {
		try {if(rs != null) rs.close();} catch(Exception e) { }
		try {if(pstmt != null) pstmt.close();} catch(Exception e) { }
		try {if(conn != null) conn.close();} catch(Exception e) { }
	}
	
	// 회원가입 로직
	public int register(UserVO userVO) {
		
		int result = 0;
		String sql = "insert into member (user_id, nickname, password) values (?, ?, ?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
		    pstmt.setString(1, userVO.getUserId());
		    pstmt.setString(2, userVO.getNickname());
		    pstmt.setString(3, userVO.getPassword());
		    

		    // 실행되면 1이 반환됨
		    result = pstmt.executeUpdate();
		    
		    // 1이 성공
		    if(result > 0) {
		    	return 1;
		    }
		    
		}
		catch(Exception e) {
			e.printStackTrace();
			e.printStackTrace();
		}
		finally {
			conClose();
		}
		return result;
	}
	
	public UserVO login(String name) {
			
		UserVO userVO = null;
		
		try {
			String sql =  "select password, nickname from member where user_id = ?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, name);
			// select 할 경우, resultSet 필요
			rs = pstmt.executeQuery();
			
			// 결과값은 1개만 있으므로, if만 있어도 가능
			// 값을 1개 받는거면 String으로 해도 되는데 2개 이상은 UserVO 필요함
			
			if(rs.next()) {
				userVO = new UserVO();
				String pw = rs.getString("password");
				String nickname = rs.getNString("nickname");
				
				userVO.setPassword(pw);
				userVO.setNickname(nickname);
				
				return userVO;
			}
		}
		catch(Exception e) {
			
		}
		finally {
			conClose();
		}
		return null;
	}

}
