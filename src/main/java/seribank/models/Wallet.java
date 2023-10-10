package seribank.models;

public class Wallet {
	private static int currentId = 0;
	private int walletId;
	private double currentBalance;
	
	public int getWalletId() {
		return walletId;
	}
	public void setWalletId(int walletId) {
		this.walletId = walletId;
	}
	public double getCurrentBalance() {
		return currentBalance;
	}
	public void setCurrentBalance(double currentBalance) {
		this.currentBalance = currentBalance;
	}
	
	public Wallet() {
		super();
		this.walletId = Wallet.currentId++;
		this.currentBalance = 100.00;
	}
	public Wallet(int walletId) {
		super();
		this.walletId = walletId;
		this.currentBalance = 100.00;
	}
	public Wallet(int walletId, double currentBalance) {
		super();
		this.walletId = walletId;
		this.currentBalance = currentBalance;
	}
	
	public void withdraw(double value) throws Exception {
		if(this.currentBalance > 0 && this.currentBalance >= value) {
			this.currentBalance -= value;
		}else {
			throw new Exception("Not enough founds");
		}
	}
	
	public void deposit(double value) {
		this.currentBalance += value;
	}
	
	@Override
	public String toString() {
		return "id= " + walletId + " balance= " + currentBalance;
	}
	
}
