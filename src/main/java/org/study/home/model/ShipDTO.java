package org.study.home.model;

import java.sql.Timestamp;
import java.util.List;

import lombok.Data;
@Data
public class ShipDTO {

	private int shipId;
	
	/* 상품 이름 */
	private String shipName;
		
	/* 상품 가격 */
	private int shipPrice;
	
	/* 상품 재고 */
	private int shipStock;
/* 상품 소개 */
	private String shipIntro;
	
	/* 등록 날짜 */
	private Timestamp regDate;
	
	/* 수정 날짜 */
	private Timestamp updateDate;
	
	/* 이미지 정보 */
	private List<AttachImageDTO> imageList;
	
	private AttachImageDTO imageDTO;
	/* 경로 */
	private String uploadPath;
	
	/* uuid */
	private String uuid;
	
	/* 파일 이름 */
	private String fileName;

	public int getShipId() {
		return shipId;
	}

	public void setShipId(int shipId) {
		this.shipId = shipId;
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

	public int getShipStock() {
		return shipStock;
	}

	public void setShipStock(int shipStock) {
		this.shipStock = shipStock;
	}

	public String getShipIntro() {
		return shipIntro;
	}

	public void setShipIntro(String shipIntro) {
		this.shipIntro = shipIntro;
	}

	public Timestamp getRegDate() {
		return regDate;
	}

	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}

	public Timestamp getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Timestamp updateDate) {
		this.updateDate = updateDate;
	}

	public List<AttachImageDTO> getImageList() {
		return imageList;
	}

	public void setImageList(List<AttachImageDTO> imageList) {
		this.imageList = imageList;
	}

	public AttachImageDTO getImageDTO() {
		return imageDTO;
	}

	public void setImageDTO(AttachImageDTO imageDTO) {
		this.imageDTO = imageDTO;
	}

	public String getUploadPath() {
		return uploadPath;
	}

	public void setUploadPath(String uploadPath) {
		this.uploadPath = uploadPath;
	}

	public String getUuid() {
		return uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	@Override
	public String toString() {
		return "ShipDTO [shipId=" + shipId + ", shipName=" + shipName + ", shipPrice=" + shipPrice + ", shipStock="
				+ shipStock + ", shipIntro=" + shipIntro + ", regDate=" + regDate + ", updateDate=" + updateDate
				+ ", imageList=" + imageList + ", imageDTO=" + imageDTO + ", uploadPath=" + uploadPath + ", uuid="
				+ uuid + ", fileName=" + fileName + "]";
	}

	
}
