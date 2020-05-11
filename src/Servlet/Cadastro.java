package Servlet;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.LoginDAO;
import conexao.Conexao;
import model.Login;

@WebServlet("/Cadastro")
public class Cadastro extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		processRequest(request, response);

	}

	private void processRequest(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			validateData(req);
			insertData(req);
			RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
			rd.forward(req, resp);
		} catch(Exception e) {
			req.setAttribute("erro", e.getMessage());
			RequestDispatcher rd = req.getRequestDispatcher("cadastro.jsp");
			rd.forward(req, resp);
		}
		

	} 
	
	private void validateData(HttpServletRequest req) throws ServletException {

		String usuario = req.getParameter("txtusuario");
		String senha = req.getParameter("txtsenha");
		String nome = req.getParameter("txtsenha");

		if (usuario.trim().equals("") || senha.trim().equals("") || nome.trim().equals(""))

			throw new ServletException("Preencha os campos");
	}
	
	private void insertData(HttpServletRequest req) throws ServletException {
		Connection con;
		String usuario = req.getParameter("txtusuario");
		String senha = req.getParameter("txtsenha");
		String nome = req.getParameter("txtnome");
        
        try {
			con = Conexao.getConexao();
			Login newUser = new Login();
			newUser.setUsuario(usuario);
			newUser.setSenha(senha);
			newUser.setNome(nome);
			LoginDAO loginDAO = new LoginDAO(con);
			HttpSession session = req.getSession(true);
			loginDAO.cadastrar(newUser, session);
        } catch (Exception e) {
			throw new ServletException(e.getMessage());
        }
		
	}

}
