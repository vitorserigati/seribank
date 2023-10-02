package seribank.models;

public class User {
	private int idUser;
	private String name;
	private Wallet wallet;
	private String cpf;
	private String phone;
	private String address;
	private String password;
	private String email;
	
	public User() {}
	public User(String name, Wallet wallet, String cpf, String phone, String address, String password, String email) {
		super();
		this.name = name;
		this.wallet = wallet;
		this.cpf = cpf;
		this.phone = phone;
		this.address = address;
		this.password = password;
		this.email = email;
	}
	public User(int idUser, String name, Wallet wallet, String cpf, String phone, String address, String password, String email) {
		this.idUser = idUser;
		this.name = name;
		this.wallet = wallet;
		this.phone = phone;
		this.address = address;
		this.cpf = cpf;
		this.password = password;
		this.email = email;
	}

	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	

	public int getIdUser() {
		return idUser;
	}


	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public Wallet getWallet() {
		return wallet;
	}


	public void setWallet(Wallet wallet) {
		this.wallet = wallet;
	}


	public String getCpf() {
		return cpf;
	}


	public void setCpf(String cpf) {
		this.cpf = cpf;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}
	
	@Override
	public String toString() {
		return "Nome: "+ name + "\nCpf: "+ cpf + "\nCelular: " + phone + "\nEndereço: " + address + "\nEmail: " + email + "\nSaldo: " + wallet.getCurrentBalance();				
	}
	
	public static User findByEmail(String email) {
		throw new UnsupportedOperationException("Not implemented yet");
	}
}
