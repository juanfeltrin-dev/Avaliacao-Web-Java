package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import model.Login;

public class LoginDAO {
	private Connection con;
	
	public LoginDAO(Connection con) {
		this.con = con;
	}
	
	public void cadastrar(Login login, HttpSession session) {
		try {
			String sql = "insert into tb_login(usuario,senha, nome)" + "values(?,?,?)";

			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, login.getUsuario());
			stmt.setString(2, login.getSenha());
			stmt.setString(3, login.getNome());
			
			stmt.execute();
			stmt.close();
		} catch(SQLException e) {
			System.out.println("Código: " + e.getErrorCode());
			System.out.println("Erro: " + e.getMessage());
			System.out.println("StackTrace: " + e.getStackTrace());
		}
	}
	
	public void logar(Login login, HttpSession session) throws ServletException {
		try {
			String sql = "select * from tb_login where usuario = ? and senha = ?";

			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, login.getUsuario());
			stmt.setString(2, login.getSenha());
			
			ResultSet rs = stmt.executeQuery();
			
			if(rs.next()) {
				session.setAttribute("usuario", rs.getString("nome"));
			}else {
				throw new ServletException("Login/Senha incorretos");
			}
		} catch(SQLException e) {
			System.out.println("Código: " + e.getErrorCode());
			System.out.println("Erro: " + e.getMessage());
			System.out.println("StackTrace: " + e.getStackTrace());
		}
	}
}
