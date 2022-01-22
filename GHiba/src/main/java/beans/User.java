package beans;

public class User {
	private int id;
	private String nomComplet;
	private String username;
	private String email;
	private String telephone;
	private String password;
	private int etat;
	private int isAdmin;
		
	public User(String nomComplet, String username, String email, String telephone, String password, int etat,
			int isAdmin) {
		super();
		this.nomComplet = nomComplet;
		this.username = username;
		this.email = email;
		this.telephone = telephone;
		this.password = password;
		this.etat = etat;
		this.isAdmin = isAdmin;
	}

	public User(int id, String nomComplet, String username, String email, String telephone, String password, int etat,
			int isAdmin) {
		super();
		this.id = id;
		this.nomComplet = nomComplet;
		this.username = username;
		this.email = email;
		this.telephone = telephone;
		this.password = password;
		this.etat = etat;
		this.isAdmin = isAdmin;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNomComplet() {
		return nomComplet;
	}

	public void setNomComplet(String nomComplet) {
		this.nomComplet = nomComplet;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getEtat() {
		return etat;
	}

	public void setEtat(int etat) {
		this.etat = etat;
	}

	public int getIsAdmin() {
		return isAdmin;
	}

	public void setIsAdmin(int isAdmin) {
		this.isAdmin = isAdmin;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", nomComplet=" + nomComplet + ", username=" + username + ", email=" + email
				+ ", telephone=" + telephone + "]";
	}
	
	
	
	
	
	


}
