package oneEntity;

public class SalesProceeds {
	private int salesProceedsId;
	private String proceedsTIme;
	private String totalPrice;
	private String orderId;
	private String operatorId;
	public SalesProceeds(int salesProceedsId, String proceedsTIme, String totalPrice, String orderId,
			String operatorId) {
		super();
		this.salesProceedsId = salesProceedsId;
		this.proceedsTIme = proceedsTIme;
		this.totalPrice = totalPrice;
		this.orderId = orderId;
		this.operatorId = operatorId;
	}
	public int getSalesProceedsId() {
		return salesProceedsId;
	}
	public void setSalesProceedsId(int salesProceedsId) {
		this.salesProceedsId = salesProceedsId;
	}
	public String getProceedsTIme() {
		return proceedsTIme;
	}
	public void setProceedsTIme(String proceedsTIme) {
		this.proceedsTIme = proceedsTIme;
	}
	public String getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public String getOperatorId() {
		return operatorId;
	}
	public void setOperatorId(String operatorId) {
		this.operatorId = operatorId;
	}
	
	
}
