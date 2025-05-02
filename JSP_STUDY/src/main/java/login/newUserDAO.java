package login;

import java.sql.*;
import javax.sql.*;
import javax.naming.*;
import javax.sql.DataSource;

public class newUserDAO {

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	
	public newUserDAO() {
		
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/MysqlDB");
			conn = ds.getConnection();
			
			
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}

	}
	
	
	
	
	
}
