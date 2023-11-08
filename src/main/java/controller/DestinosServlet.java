package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DestinosDAO;
import modelos.Destinos;


@WebServlet(urlPatterns = {"/Destinos", "/Destinos-create", "/Destinos-edit", "/Destinos-update", "/Destinos-delete" })
public class DestinosServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DestinosDAO ddao = new DestinosDAO();
	Destinos Destino = new Destinos();
	
	
    public DestinosServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getServletPath();
		
		switch (action) {
		case "/Destinos":
			read(request, response);
			break;
			
		case "/Destinos-create":
		create(request,response);
		break;
		
		case "/Destinos-edit":
			edit(request,response);
			break;
			
		case "/Destinos-update":
			update(request,response);
			break;
		
		case "/Destinos-delete":
			delete(request, response);
			break;
			default:
				response.sendRedirect("index.jsp");
				break;}
	}
			

	protected void read(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		List<Destinos> lista = ddao.read();
		System.out.println(lista);
		
		request.setAttribute("listaDestinos", lista);
		
		RequestDispatcher rd = request.getRequestDispatcher("./views/Destinos/index.jsp");
		rd.forward(request, response);
	}
	
	protected void create(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		Destino.setNome_destino(request.getParameter("nome_desitno"));
		Destino.setPais(request.getParameter("pais"));
		Destino.setEstado(request.getParameter("estado"));
		Destino.setCidade(request.getParameter("cidade"));
		Destino.setPreco(Double.parseDouble(request.getParameter("preco")));
		
		ddao.create(Destino);
		response.sendRedirect("Destinos");
		
		
	}
	
	protected void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		int ID = Integer.parseInt(request.getParameter("ID"));
		
		Destino = ddao.readByID(ID);
		request.setAttribute("Destinos", Destino);
		
		RequestDispatcher rd = request.getRequestDispatcher("./views/Destinos/update.jsp");
		rd.forward(request, response);
		
	}
	
	protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		Destino.setID(Integer.parseInt(request.getParameter("ID")));
		Destino.setNome_destino(request.getParameter("nome_destino"));
		Destino.setPais(request.getParameter("pais"));
		Destino.setEstado(request.getParameter("estado"));
		Destino.setCidade(request.getParameter("cidade"));
		Destino.setPreco(Double.parseDouble(request.getParameter("preco")));
		
		ddao.update(Destino);
		response.sendRedirect("Destinos");
	}
	
	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		int ID = Integer.parseInt(request.getParameter("ID"));
		ddao.delete(ID);
		response.sendRedirect("Destinos");
		
	}
	
}