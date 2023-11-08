package modelos;

public class Compras {

	//ATRIBUTOS
	
	private int ID;
	public int fk_usuario;
	public int fk_destino;
	public String data_compra;
	public String data_ida;
	public String data_volta;
	public double total_compra;
	
	Usuarios usuario;
	Destinos destino;

	//CONSTRUTORES
	
	public Compras() {
		
	}
	
	
	public Compras(int iD, String data_compra, String data_ida, String data_volta, double total_compra, Usuarios usuario,
			Destinos destino) {
		ID = iD;
		this.data_compra = data_compra;
		this.data_ida = data_ida;
		this.data_volta = data_volta;
		this.total_compra = total_compra;
		this.usuario = usuario;
		this.destino = destino;
	}

	public Compras(String data_compra, String data_ida, String data_volta, double total_compra, Usuarios usuario,
			Destinos destino) {
		this.data_compra = data_compra;
		this.data_ida = data_ida;
		this.data_volta = data_volta;
		this.total_compra = total_compra;
		this.usuario = usuario;
		this.destino = destino;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getdata_compra() {
		return data_compra;
	}

	public void setdata_compra(String data_compra) {
		this.data_compra = data_compra;
	}

	public String getData_ida() {
		return data_ida;
	}

	public void setData_ida(String data_ida) {
		this.data_ida = data_ida;
	}

	public String getData_volta() {
		return data_volta;
	}

	public void setData_volta(String data_volta) {
		this.data_volta = data_volta;
	}

	public double getTotal_compra() {
		return total_compra;
	}

	public void setTotal_compra(double total_compra) {
		this.total_compra = total_compra;
	}

	public Usuarios getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuarios usuario) {
		this.usuario = usuario;
	}

	public Destinos getDestino() {
		return destino;
	}

	public void setDestino(Destinos destino) {
		this.destino = destino;
	}

	
	
	@Override
	public String toString() {
		return "Compras [ID=" + ID + ", data_compra=" + data_compra + ", data_ida=" + data_ida + ", data_volta="
				+ data_volta + ", total_compra=" + total_compra + ", usuario=" + usuario + ", destino=" + destino + "]";
	}
	
	
	
}
	
