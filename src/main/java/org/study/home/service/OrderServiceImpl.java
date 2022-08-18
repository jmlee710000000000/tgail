package org.study.home.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.study.home.mapper.AttachMapper;
import org.study.home.mapper.OrderMapper;
import org.study.home.model.AttachImageDTO;
import org.study.home.model.OrderPageItemDTO;

@Service
public class OrderServiceImpl implements OrderService{
	@Autowired
	private OrderMapper orderMapper;
	
	@Autowired
	private AttachMapper attachMapper;
	
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
	
}
