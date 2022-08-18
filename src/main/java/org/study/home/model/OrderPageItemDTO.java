package org.study.home.model;

import java.util.List;

public class OrderPageItemDTO {
	/* 뷰로부터 전달받을 값 */
    private int shipId;
    
    private int shipCount;
    
    /* DB로부터 꺼내올 값 */
    private String shipName;
    
    private int shipPrice;
    
    private int totalPrice;
    
	/* 상품 이미지 */
	private List<AttachImageDTO> imageList;

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

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}



	@Override
	public String toString() {
		return "OrderPageItemDTO [shipId=" + shipId + ", shipCount=" + shipCount + ", shipName=" + shipName
				+ ", shipPrice=" + shipPrice + ", totalPrice=" + totalPrice + ", imageList=" + imageList + "]";
	}

	public List<AttachImageDTO> getImageList() {
		return imageList;
	}

	public void setImageList(List<AttachImageDTO> imageList) {
		this.imageList = imageList;
	}

	
	
}
    
    

