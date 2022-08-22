package org.study.home.mapper;

import java.util.List;

import org.study.home.model.AttachImageDTO;
import org.study.home.model.Criteria;
import org.study.home.model.OrderDTO;
import org.study.home.model.ShipDTO;

public interface AdminMapper {
	public void shipEnroll(ShipDTO ship);

	public List<ShipDTO> goodsGetList(Criteria cri);

	   public int goodsGetTotal(Criteria cri);
	   /* 이미지 등록 */
		public void imageEnroll(AttachImageDTO dto);

		   public ShipDTO goodsRead(String shipId);
		   public void goodsUpdate(ShipDTO dto);
		   
		   public ShipDTO goodsGetDetail(int shipId);
		   
		   /* 상품 수정 */
			public int goodsModify(ShipDTO dto);
			
			/* 상품 정보 삭제 */
			public int goodsDelete(int shipId);
			
			/* 지정 상품 이미지 전체 삭제 */
			public void deleteImageAll(int shipId);
			
			/* 지정 상품 이미지 정보 얻기 */
			public List<AttachImageDTO> getAttachInfo(int shipId);	
			
			/* 주문 상품 리스트 */
			public List<OrderDTO> getOrderList(Criteria cri);	
			
			/* 주문 총 갯수 */
			public int getOrderTotal(Criteria cri);
}
