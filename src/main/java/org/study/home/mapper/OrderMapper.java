package org.study.home.mapper;

import org.study.home.model.OrderPageItemDTO;

public interface OrderMapper {
	/* 주문 상품 정보 */	
	public OrderPageItemDTO getGoodsInfo(int shipId);
}
