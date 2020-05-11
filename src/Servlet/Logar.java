package Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

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


@WebServlet("/Login")
public class Logar extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		
        session.removeAttribute("usuario");
        session.invalidate();
		request.setAttribute("sucesso", "Logout com sucesso");
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);

	}
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		processRequest(request, response);

	}

	private void processRequest(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			validaDadosRecebidos(req);
			RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
			rd.forward(req, resp);
		} catch(Exception e) {
			req.setAttribute("erro", e.getMessage());
			RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
			rd.forward(req, resp);
		}
		

	} 
	
	private void validaDadosRecebidos(HttpServletRequest req) throws ServletException, SQLException {

		String nomeUsuario = req.getParameter("txtusuario");
		String nomeSenha = req.getParameter("txtsenha");
		Connection con;

		if (nomeUsuario.trim().equals("") || nomeSenha.trim().equals(""))

			throw new ServletException("Preencha os campos");
		
		try {
			con = Conexao.getConexao();
			Login newUser = new Login();
			newUser.setUsuario(nomeUsuario);
			newUser.setSenha(nomeSenha);
			LoginDAO loginDAO = new LoginDAO(con);
			HttpSession session = req.getSession(true);
			loginDAO.logar(newUser, session);
			req.setAttribute("sucesso", "Bem-vindo, " + session.getAttribute("usuario"));
		} catch(SQLException e) {
			throw new SQLException(e);
		}

	}

}
