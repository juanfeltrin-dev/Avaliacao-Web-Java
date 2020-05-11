package conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
	
	public static Connection getConexao() throws SQLException{
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
			
			return DriverManager.getConnection("jdbc:mysql://localhost/login", "root", "");
			
		}catch(SQLException e){
			throw new SQLException(e);
			
		}catch(ClassNotFoundException e1){
			throw new SQLException(e1);
		}
	}
	
}
