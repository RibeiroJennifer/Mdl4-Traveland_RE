package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UsuarioDAO;
import modelos.Usuarios;


@WebServlet(urlPatterns = {"/Usuario", "/Usuario-create", "/Usuario-edit", "/Usuario-update", "/Usuario-delete" })
public class UsuarioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UsuarioDAO udao = new UsuarioDAO();
	Usuarios Usuario = new Usuarios();
	
	
    public UsuarioServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getServletPath();
		
		switch (action) {
		case "/Usuario":
			read(request, response);
			break;
			
		case "/Usuario-create":
		create(request,response);
		break;
		
		case "/Usuario-edit":
			edit(request,response);
			break;
			
		case "/Usuario-update":
			update(request,response);
			break;
		
		case "/Usuario-delete":
			delete(request, response);
			break;
			default:
				response.sendRedirect("index.jsp");
				break;}
	}
			

	protected void read(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		List<Usuarios> lista = udao.read();
		System.out.println(lista);
		
		request.setAttribute("listaUsuarios", lista);
		
		RequestDispatcher rd = request.getRequestDispatcher("./views/Usuarios/index.jsp");
		rd.forward(request, response);
	}
	
	protected void create(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		Usuario.setNome_usuario(request.getParameter("nome_usuario"));
		Usuario.setCpf(request.getParameter("cpf"));
		Usuario.setEmail(request.getParameter("email"));
		Usuario.setSenha(request.getParameter("senha"));
		
		udao.create(Usuario);
		response.sendRedirect("Usuario");
		
		
	}
	
	protected void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		int ID = Integer.parseInt(request.getParameter("ID"));
		
		Usuario = udao.readByID(ID);
		request.setAttribute("Usuario", Usuario);
		
		RequestDispatcher rd = request.getRequestDispatcher("./views/Usuarios/update.jsp");
		rd.forward(request, response);
		
	}
	
	protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		
		Usuario.setID(Integer.parseInt(request.getParameter("ID")));
		Usuario.setNome_usuario(request.getParameter("nome_usuario"));
		Usuario.setCpf(request.getParameter("cpf"));
		Usuario.setEmail(request.getParameter("email"));
		Usuario.setSenha(request.getParameter("senha"));
		
		udao.update(Usuario);
		response.sendRedirect("Usuario");
	}
	
	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		int ID = Integer.parseInt(request.getParameter("ID"));
		udao.delete(ID);
		response.sendRedirect("Usuario");
		
	}
	
}