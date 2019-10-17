package entity;

public class Detail {
	private int booId;
	private int order;
	private int quantity;
	private double price;
	public Detail(int booId, int order, int quantity, double price) {
		super();
		this.booId = booId;
		this.order = order;
		this.quantity = quantity;
		this.price = price;
	}
	public int getBooId() {
		return booId;
	}
	public void setBooId(int booId) {
		this.booId = booId;
	}
	public int getOrder() {
		return order;
	}
	public void setOrder(int order) {
		this.order = order;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
}
