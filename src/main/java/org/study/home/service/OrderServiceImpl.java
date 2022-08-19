package org.study.home.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.study.home.mapper.AttachMapper;
import org.study.home.mapper.CartMapper;
import org.study.home.mapper.MemberMapper;
import org.study.home.mapper.OrderMapper;
import org.study.home.mapper.ShipMapper;
import org.study.home.model.AttachImageDTO;
import org.study.home.model.CartDTO;
import org.study.home.model.MemberDTO;
import org.study.home.model.OrderDTO;
import org.study.home.model.OrderItemDTO;
import org.study.home.model.OrderPageItemDTO;
import org.study.home.model.ShipDTO;

@Service
public class OrderServiceImpl implements OrderService{
	@Autowired
	private OrderMapper orderMapper;
	
	@Autowired
	private AttachMapper attachMapper;
	
	@Autowired
	private MemberMapper memberMapper;
	
	@Autowired
	private CartMapper cartMapper;
	
	@Autowired
	private ShipMapper shipMapper;
	
	@Override
	public List<OrderPageItemDTO> getGoodsInfo(List<OrderPageItemDTO> orders) {

		List<OrderPageItemDTO> result = new ArrayList<OrderPageItemDTO>();		
		
		for(OrderPageItemDTO ord : orders) {
			
			OrderPageItemDTO goodsInfo = orderMapper.getGoodsInfo(ord.getShipId());			

			goodsInfo.setShipCount(ord.getShipCount());	
			
			List<AttachImageDTO> imageList = attachMapper.getAttachList(goodsInfo.getShipId());
			
			goodsInfo.setImageList(imageList);
			
			
			result.add(goodsInfo);			
		}		
		
		return result;
		
	}
	
	@Override
	@Transactional
	public void order(OrderDTO ord) {
		/* 사용할 데이터가져오기 */
		/* 회원 정보 */
		MemberDTO member = memberMapper.getMemberInfo(ord.getMemberId());
		/* 주문 정보 */
		List<OrderItemDTO> ords = new ArrayList<>();
		for(OrderItemDTO oit : ord.getOrders()) {
			OrderItemDTO orderItem = orderMapper.getOrderInfo(oit.getShipId());
			// 수량 셋팅
			orderItem.setShipCount(oit.getShipCount());
			//List객체 추가
			ords.add(orderItem);
		}
		/* OrderDTO 셋팅 */
		ord.setOrders(ords);
		ord.getOrderPriceInfo();
		
		/*DB 주문,주문상품(,배송정보) 넣기*/
		
		/* orderId만들기 및 OrderDTO객체 orderId에 저장 */
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("_yyyyMMddmm");
		String orderId = member.getUser_id() + format.format(date);
		ord.setOrderId(orderId);
		
		/* db넣기 */
		orderMapper.enrollOrder(ord);		//vam_order 등록
		for(OrderItemDTO oit : ord.getOrders()) {		//vam_orderItem 등록
			oit.setOrderId(orderId);
			orderMapper.enrollOrderItem(oit);			
		}
		/* 재고 변동 적용 */
		for(OrderItemDTO oit : ord.getOrders()) {
			/* 변동 재고 값 구하기 */
			ShipDTO ship = shipMapper.getGoodsInfo(oit.getShipId());
			ship.setShipStock(ship.getShipStock() - oit.getShipCount());
			/* 변동 값 DB 적용 */
			orderMapper.deductStock(ship);
		}
		/* 장바구니 제거 */
		for(OrderItemDTO oit : ord.getOrders()) {
			CartDTO dto = new CartDTO();
			dto.setUser_id(ord.getMemberId());
			dto.setShipId(oit.getShipId());
			
			cartMapper.deleteOrderCart(dto);
		}
		
	}
	
}
