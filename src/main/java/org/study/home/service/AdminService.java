package org.study.home.service;

import java.util.List;

import org.study.home.model.AttachImageDTO;
import org.study.home.model.Criteria;
import org.study.home.model.ShipDTO;

public interface AdminService {
	public void shipEnroll(ShipDTO ship);

	public List<ShipDTO> goodsGetList(Criteria cri);

	public int goodsGetTotal(Criteria cri) throws Exception;

	ShipDTO goodsRead(String shipId);

	void goodsUpdate(ShipDTO dto);
	
	/* 상품 조회 페이지 */
	public ShipDTO goodsGetDetail(int shipId);	
	
	/* 상품 수정 */
	public int goodsModify(ShipDTO dto);	
	
	/* 상품 정보 삭제 */
	public int goodsDelete(int shipId);
	/* 지정 상품 이미지 정보 얻기 */
	public List<AttachImageDTO> getAttachInfo(int shipId);
}
