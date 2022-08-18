package org.study.home.model;

import java.util.List;

public class CartDTO {
    private int cartId;
    
    private String user_id;
    
    private int shipId;
    
    private String shipCount;
    
    private String shipName;
    
    private int shipPrice;
    
    private int totalPrice;
    
	/* 상품 이미지 */
	private List<AttachImageDTO> imageList;
    

	public List<AttachImageDTO> getImageList() {
		return imageList;
	}

	public void setImageList(List<AttachImageDTO> imageList) {
		this.imageList = imageList;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getShipId() {
		return shipId;
	}

	public void setShipId(int shipId) {
		this.shipId = shipId;
	}

	public String getShipCount() {
		return this.shipCount;
	}

	public void setShipCount(String shipCount) {
		this.shipCount = shipCount;
	}

	public String getShipName() {
		return shipName;
	}

	public void setShipName(String shipName) {
		this.shipName = shipName;
	}

	public int getShipPrice() {
		return shipPrice;
	}

	public void setShipPrice(int shipPrice) {
		this.shipPrice = shipPrice;
	}

	@Override
	public String toString() {
		return "CartDTO [cartId=" + cartId + ", user_id=" + user_id + ", shipId=" + shipId + ", shipCount=" + shipCount
				+ ", shipName=" + shipName + ", shipPrice=" + shipPrice + ", totalPrice=" + totalPrice + ", imageList="
				+ imageList + "]";
	}

	
    
}
