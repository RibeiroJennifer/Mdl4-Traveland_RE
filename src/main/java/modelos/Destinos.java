package modelos;

public class Destinos {

	//ATRIBUTOS
	
	private int ID;
	private String nome_destino;
	private String pais;
	private String estado;
	private String cidade;
	private Double preco;
	
	//CONSTRUTORES
	
	public Destinos() {
	}

	public Destinos(int iD, String nome_destino, String pais, String estado, String cidade, Double preco) {
		ID = iD;
		this.nome_destino = nome_destino;
		this.pais = pais;
		this.estado = estado;
		this.cidade = cidade;
		this.preco = preco;
	}

	public Destinos(String nome_destino, String pais, String estado, String cidade, Double preco) {
		this.nome_destino = nome_destino;
		this.pais = pais;
		this.estado = estado;
		this.cidade = cidade;
		this.preco = preco;
	}

	//GETTERSeSETTERS
	
	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getNome_destino() {
		return nome_destino;
	}

	public void setNome_destino(String nome_destino) {
		this.nome_destino = nome_destino;
	}

	public String getPais() {
		return pais;
	}

	public void setPais(String pais) {
		this.pais = pais;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public double getPreco() {
		return preco;
	}

	public void setPreco(Double preco) {
		this.preco = preco;
	}

	//TOSTRING
	
	@Override
	public String toString() {
		return "Destinos [ID=" + ID + ", nome_destino=" + nome_destino + ", pais=" + pais + ", estado=" + estado + ", cidade=" + cidade
				+ ", preco=" + preco + "]";
	}

	public static void add(Destinos destino) {
		// TODO Auto-generated method stub
		
	}
	
}
