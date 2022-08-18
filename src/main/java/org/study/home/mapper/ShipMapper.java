package org.study.home.mapper;

import java.util.List;

import org.study.home.model.Criteria;
import org.study.home.model.ShipDTO;

public interface ShipMapper {
	/* 상품 검색 */
	public List<ShipDTO> getGoodsList(Criteria cri);
	
	/* 상품 총 갯수 */
	public int goodsGetTotal(Criteria cri);
	
	/* 상품 정보 */
	public ShipDTO getGoodsInfo(int shipId);
}
