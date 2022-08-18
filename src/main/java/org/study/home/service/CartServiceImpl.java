package org.study.home.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.study.home.mapper.AttachMapper;
import org.study.home.mapper.CartMapper;
import org.study.home.model.AttachImageDTO;
import org.study.home.model.CartDTO;

@Service
public class CartServiceImpl implements CartService{
	@Autowired
	private CartMapper cartMapper;
	
	@Autowired
	private AttachMapper attachMapper;
	
	@Override
	public int addCart(CartDTO cart) {
		// 장바구니 데이터 체크
				CartDTO checkCart = cartMapper.checkCart(cart);
				System.out.println("addCar===================:" + checkCart + "aaaa:"+cart);
				if(checkCart != null) {
					return 2;
				}
				
				// 장바구니 등록 & 에러 시 0반환
				try {
					return cartMapper.addCart(cart);
				} catch (Exception e) {
					return 0;
				}
		}

	@Override
	public List<CartDTO> getCartList(String user_id) {

		List<CartDTO> cart = cartMapper.getCart(user_id);
		
		for(CartDTO dto : cart) {
		
			
			/* 이미지 정보 얻기 */
			int shipId = dto.getShipId();
			
			List<AttachImageDTO> imageList = attachMapper.getAttachList(shipId);
			
			dto.setImageList(imageList);
		}
	
		return cart;
	}
	@Override
	public int modifyCount(CartDTO cart) {
		
		return cartMapper.modifyCount(cart);
	}
	
	@Override
	public int deleteCart(int cartId) {

		return cartMapper.deleteCart(cartId);
	}	
}