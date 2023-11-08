package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ComprasDAO;
import dao.DestinosDAO;
import dao.UsuarioDAO;
import modelos.Compras;
import modelos.Destinos;
import modelos.Usuarios;


@WebServlet(urlPatterns = {"/Compras", "/Compras-getCreate", "/Compras-create", "/Compras-edit", "/Compras-update", "/Compras-delete" })
public class ComprasServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ComprasDAO cdao = new ComprasDAO();
	Compras Compra = new Compras();
	DestinosDAO ddao = new DestinosDAO();
	UsuarioDAO udao = new UsuarioDAO();
	
	
    public ComprasServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getServletPath();
		
		switch (action) {
		case "/Compras":
			read(request, response);
			break;
			
		case "/Compras-getCreate":
			getCreate(request,response);
			break;
			
		case "/Compras-create":
		create(request,response);
		break;
		
		case "/Compras-edit":
			edit(request,response);
			break;
			
		case "/Compras-update":
			update(request,response);
			break;
		
		case "/Compras-delete":
			delete(request, response);
			break;
			default:
				response.sendRedirect("index.jsp");
				break;}
	}
			

	protected void read(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		List<Compras> lista = cdao.read();
		//System.out.println(lista);
		
		request.setAttribute("listaCompras", lista);
		
		RequestDispatcher rd = request.getRequestDispatcher("./views/Compras/index.jsp");
		rd.forward(request, response);
	}
	
	protected void getCreate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		List<Usuarios> listaUsuarios = udao.read();
		request.setAttribute("listaUsuarios", listaUsuarios);
		
		List<Destinos> listaDestinos = ddao.read();
		request.setAttribute("listaDestinos", listaDestinos);
		
		RequestDispatcher rd = request.getRequestDispatcher("./views/Compras/create.jsp");
		rd.forward(request, response);
		
	}
	
	protected void create(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		Usuarios usuario = udao.readByID(Integer.parseInt(request.getParameter("usuario")));
		Destinos destino = ddao.readByID(Integer.parseInt(request.getParameter("destinos")));
		
		Compra.fk_usuario = Integer.parseInt(request.getParameter("usuario"));
		Compra.fk_destino = Integer.parseInt(request.getParameter("destinos"));
		Compra.setData_ida(request.getParameter("data_ida"));
		Compra.setData_volta(request.getParameter("data_volta"));
		Compra.setdata_compra(request.getParameter("data_compra"));
		Compra.setTotal_compra(Double.parseDouble(request.getParameter("total_compra")));
		
		var NovaCompra = new Compras(
					0,
					Compra.getdata_compra(),
					Compra.getData_ida(),
					Compra.getData_volta(),
					Compra.total_compra,
					usuario,
					destino
				);
		
		cdao.create(NovaCompra);
		response.sendRedirect("Compras");
		
		
	}
	
	protected void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		int ID = Integer.parseInt(request.getParameter("ID"));
		
		Compra = cdao.readByID(ID);
		
		request.setAttribute("Compras", Compra);
	
		List<Usuarios> listaUsuarios = udao.read();
		request.setAttribute("listaUsuarios", listaUsuarios);
		
		List<Destinos> listaDestinos = ddao.read();
		request.setAttribute("listaDestinos", listaDestinos);
		
		RequestDispatcher rd = request.getRequestDispatcher("./views/Compras/update.jsp");
		rd.forward(request, response);
		
	}
	
	protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		
		Compra.setID(Integer.parseInt(request.getParameter("ID")));
		Compra.setUsuario(udao.readByID(Integer.parseInt(request.getParameter("usuario"))));
		Compra.setDestino(ddao.readByID(Integer.parseInt(request.getParameter("destinos"))));
		Compra.setData_ida(request.getParameter("data_ida"));
		Compra.setData_volta(request.getParameter("data_volta"));
		Compra.setdata_compra(request.getParameter("data_compra"));
		
		
		cdao.update(Compra);
		response.sendRedirect("Compras");
	}
	
	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		int ID = Integer.parseInt(request.getParameter("ID"));
		cdao.delete(ID);
		response.sendRedirect("Compras");
		
	}
	
}
