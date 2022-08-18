package org.study.home.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.study.home.mapper.AdminMapper;
import org.study.home.mapper.AttachMapper;
import org.study.home.mapper.ShipMapper;
import org.study.home.model.AttachImageDTO;
import org.study.home.model.Criteria;
import org.study.home.model.ShipDTO;

@Service
public class ShipServiceImpl implements ShipService{
	@Autowired
	private ShipMapper shipMapper;
	@Autowired
	private AttachMapper attachMapper;
	
	@Autowired
	private AdminMapper adminMapper;
	
	/* 상품 검색 */
	@Override
	public List<ShipDTO> getGoodsList(Criteria cri) {
			List<ShipDTO> list = shipMapper.getGoodsList(cri);
		
			list.forEach(book -> {
			
			int bookId = book.getShipId();
			
			List<AttachImageDTO> imageList = attachMapper.getAttachList(bookId);
			
			book.setImageList(imageList);
			
		});

		
		return list;
	}

	/* 사품 총 갯수 */
	@Override
	public int goodsGetTotal(Criteria cri) {
		

		
		return shipMapper.goodsGetTotal(cri);
		
	}
	
	
	@Override
	public ShipDTO getGoodsInfo(int shipId) {
		
		ShipDTO goodsInfo = shipMapper.getGoodsInfo(shipId);
		goodsInfo.setImageList(adminMapper.getAttachInfo(shipId));
		
		return goodsInfo;
	}
}
