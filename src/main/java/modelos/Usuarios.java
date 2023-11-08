package modelos;

public class Usuarios {

	//ATRIBUTOS
	
	private int ID;
	private String nome_usuario;
	private String cpf;
	private String email;
	private String senha;
	
	//CONSTRUTORES
	
	public Usuarios() {
	}

	public Usuarios(int iD, String nome_usuario, String cpf, String email, String senha) {
		this.ID = iD;
		this.nome_usuario = nome_usuario;
		this.cpf = cpf;
		this.email = email;
		this.senha = senha;
	}

	public Usuarios(String nome_usuario, String cpf, String email, String senha) {
		this.nome_usuario = nome_usuario;
		this.cpf = cpf;
		this.email = email;
		this.senha = senha;
	}

	//GETTERSeSETTERS

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getNome_usuario() {
		return nome_usuario;
	}

	public void setNome_usuario(String nome_usuario) {
		this.nome_usuario = nome_usuario;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	//TOSTRING
	
	@Override
	public String toString() {
		return "Usuarios [ID=" + ID + ", nome_usuario=" + nome_usuario + ", cpf=" + cpf + ", email=" + email + ", senha=" + senha + "]";
	}
	
	
	
	
	
}
