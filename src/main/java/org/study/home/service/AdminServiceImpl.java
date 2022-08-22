package org.study.home.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.study.home.mapper.AdminMapper;
import org.study.home.model.AttachImageDTO;
import org.study.home.model.Criteria;
import org.study.home.model.OrderDTO;
import org.study.home.model.ShipDTO;

@Service

public class AdminServiceImpl implements AdminService{
	@Autowired
	private AdminMapper adminMapper;
	/* 상품 등록 */
	@Transactional
	@Override
	public void shipEnroll(ShipDTO ship) {
		System.out.println("shipEnroll");
		
		adminMapper.shipEnroll(ship);
		
		if(ship.getImageList() == null || ship.getImageList().size() <= 0) {
			return;
		}
		 //람다식 활용한 for문
		ship.getImageList().forEach(attach ->{
			attach.setShipId(ship.getShipId());
			adminMapper.imageEnroll(attach);
		});
		
		
	}
	
	@Override
	public ShipDTO goodsRead(String shipId) {
		return adminMapper.goodsRead(shipId);
	}

	@Override
	public void goodsUpdate(ShipDTO dto) {
		adminMapper.goodsUpdate(dto);

	}

	
	
	
	
	/* 상품 리스트 */
	   @Override
	   public List<ShipDTO> goodsGetList(Criteria cri) {
	      System.out.println("goodsGetTotalList().........." + cri);
	      return adminMapper.goodsGetList(cri);
	   }

	   /* 상품 총 갯수 */
	   public int goodsGetTotal(Criteria cri) {
	      System.out.println("goodsGetTotal()........." + cri);
	      return adminMapper.goodsGetTotal(cri);
	   }
	   
	   
	   
	   /* 상품 조회 페이지 */
		@Override
		public ShipDTO goodsGetDetail(int shipId) {
			
			System.out.println("(service)bookGetDetail......." + shipId);
			
			return adminMapper.goodsGetDetail(shipId);
		}	
		
		/* 상품 정보 수정 */
		@Transactional
		@Override
		public int goodsModify(ShipDTO dto) {
			
			int result = adminMapper.goodsModify(dto);
			
			if(result == 1 && dto.getImageList() != null && dto.getImageList().size() > 0) {
				
				adminMapper.deleteImageAll(dto.getShipId());
				
				dto.getImageList().forEach(attach -> {
					
					attach.setShipId(dto.getShipId());
					adminMapper.imageEnroll(attach);
					
				});
				
			}
			
			return result;
			
		}
		
		/* 상품 정보 삭제 */
		@Override
		@Transactional
		public int goodsDelete(int shipId) {

			System.out.println("goodsDelete..........");
			adminMapper.deleteImageAll(shipId);

			return adminMapper.goodsDelete(shipId);
		}	
		
		/* 지정 상품 이미지 정보 얻기 */
		@Override
		public List<AttachImageDTO> getAttachInfo(int shipId) {
			
			System.out.println("getAttachInfo........");
			
			return adminMapper.getAttachInfo(shipId);
		}
		
		/* 주문 상품 리스트 */
		@Override
		public List<OrderDTO> getOrderList(Criteria cri) {
			return adminMapper.getOrderList(cri);
		}
		
		/* 주문 총 갯수 */
		@Override
		public int getOrderTotal(Criteria cri) {
			return adminMapper.getOrderTotal(cri);
		}
}
