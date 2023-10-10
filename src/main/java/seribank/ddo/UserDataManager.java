package seribank.ddo;

import java.util.ArrayList;
import java.util.List;

import seribank.models.User;
import seribank.models.Wallet;

public class UserDataManager {
	private static UserDataManager instance;
	private static int currentUserId;
	private List<User> userList;
	private List<Wallet> walletList;
	
	private UserDataManager() {
		userList = new ArrayList<>();
		walletList = new ArrayList<>();
		Wallet wallet = new Wallet();
		currentUserId = 0;
		User user = new User(currentUserId, "Henrique Serigati", wallet, "43306676810", "11960852305", "Rua Alcino Fidelis, 304", "password", "teste@teste.com");
		userList.add(user);
		walletList.add(user.getWallet());
		currentUserId++;
	}
	
	public static UserDataManager getInstance() {
		if (instance == null) {
			instance = new UserDataManager();
		}
		return instance;
	}
	
	public boolean registerUser(String name, String cpf, String phone, String address, String password, String email) {	
		for(User user : userList) {
			if(user.getEmail().equals(email)) {
				return false;
			}
		}
		Wallet wallet = new Wallet();
		User newUser = new User(currentUserId, name, wallet, cpf, phone, address, password, email);
		userList.add(newUser);
		walletList.add(newUser.getWallet());
		currentUserId++;
		return true;
	}
	
	public User getUser(int id) {
		for(User user : userList) {
			if(user.getIdUser() == id) {
				return user;
			}
		}
		return null;
	}
	
	public User getUserByEmail(String email) {
		for (User user : userList) {
			if(user.getEmail().equals(email)) {
				return user;
			}
		}
		return null;
	}
	
	public List<User> getUsersExceptBy(int id){
		List<User> list = new ArrayList<>();
		for(User user : userList) {
			if(user.getIdUser() == id) {
				continue;
			}else {
				list.add(user);
			}
		}
		return list;
	}
}
