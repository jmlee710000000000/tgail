package org.study.home.mapper;

import java.util.List;

import org.study.home.model.CartDTO;
import org.study.home.model.MemberDTO;
import org.study.home.model.OrderDTO;
import org.study.home.model.OrderItemDTO;
import org.study.home.model.OrderPageItemDTO;
import org.study.home.model.ShipDTO;

public interface OrderMapper {
	/* 주문 상품 정보 */	
	public OrderPageItemDTO getGoodsInfo(int shipId);
	
	/* 주문 상품 정보(주문 처리) */	
	public OrderItemDTO getOrderInfo(int shipId);
	/* 주문 테이블 등록 */
	public int enrollOrder(OrderDTO ord);
	
	/* 주문 아이템 테이블 등록 */
	public int enrollOrderItem(OrderItemDTO orid);
	
	/* 주문 재고 차감 */
	public int deductStock(ShipDTO ship);

	/* 카트 제거(주문) */
	public int deleteOrderCart(CartDTO dto);
	
	/* 주문 취소 */
	public int orderCancle(String orderId);
	
	/* 주문 상품 정보(주문취소) */
	public List<OrderItemDTO> getOrderItemInfo(String orderId);
	
	/* 주문 정보(주문취소) */
	public OrderDTO getOrder(String orderId);





}
