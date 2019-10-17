package entity;

public class Shopcar {
	private String carId;
	private String carcrateTime;
	private int cld;
	private String carSate;
	private double carTotal;
	
	public Shopcar(String carcrateTime, int cld, String carSate, double carTotal) {
		super();
		this.carcrateTime = carcrateTime;
		this.cld = cld;
		this.carSate = carSate;
		this.carTotal = carTotal;
	}
	public Shopcar(String carId, String carcrateTime, int cld, String carSate, double carTotal) {
		super();
		this.carId = carId;
		this.carcrateTime = carcrateTime;
		this.cld = cld;
		this.carSate = carSate;
		this.carTotal = carTotal;
	}
	public String getCarId() {
		return carId;
	}
	public void setCarId(String carId) {
		this.carId = carId;
	}
	public String getCarcrateTime() {
		return carcrateTime;
	}
	public void setCarcrateTime(String carcrateTime) {
		this.carcrateTime = carcrateTime;
	}
	public int getCld() {
		return cld;
	}
	public void setCld(int cld) {
		this.cld = cld;
	}
	public String getCarSate() {
		return carSate;
	}
	public void setCarSate(String carSate) {
		this.carSate = carSate;
	}
	public double getCarTotal() {
		return carTotal;
	}
	public void setCarTotal(double carTotal) {
		this.carTotal = carTotal;
	}
	
}
