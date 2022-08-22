package org.study.home.service;

import java.util.List;

import org.study.home.model.OrderCancelDTO;
import org.study.home.model.OrderDTO;
import org.study.home.model.OrderPageItemDTO;

public interface OrderService {
	/* 주문 정보 */
	public List<OrderPageItemDTO> getGoodsInfo(List<OrderPageItemDTO> orders);


	/* 주문 */
	public void  order(OrderDTO orw);
	
	/* 주문 취소 */
	public void orderCancle(OrderCancelDTO dto);
	
	
}
