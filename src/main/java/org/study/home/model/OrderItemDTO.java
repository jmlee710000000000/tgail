package org.study.home.model;

public class OrderItemDTO {
	/* 주문 번호 */
	private String orderId;
	
	/* 상품 번호 */
    private int shipId;
    
	/* 주문 수량 */
    private int shipCount;
    
	/* vam_orderItem 기본키 */
    private int orderItemId;
    
	/* 상품 한 개 가격 */
    private int shipPrice;

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public int getShipId() {
		return shipId;
	}

	public void setShipId(int shipId) {
		this.shipId = shipId;
	}

	public int getShipCount() {
		return shipCount;
	}

	public void setShipCount(int shipCount) {
		this.shipCount = shipCount;
	}

	public int getOrderItemId() {
		return orderItemId;
	}

	public void setOrderItemId(int orderItemId) {
		this.orderItemId = orderItemId;
	}

	public int getShipPrice() {
		return shipPrice;
	}

	public void setShipPrice(int shipPrice) {
		this.shipPrice = shipPrice;
	}

	@Override
	public String toString() {
		return "OrderItemDTO [orderId=" + orderId + ", shipId=" + shipId + ", shipCount=" + shipCount + ", orderItemId="
				+ orderItemId + ", shipPrice=" + shipPrice + "]";
	}

	

}
