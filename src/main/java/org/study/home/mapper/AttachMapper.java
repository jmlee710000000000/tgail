package org.study.home.mapper;

import java.util.List;

import org.study.home.model.AttachImageDTO;

public interface AttachMapper {
	/* 이미지 데이터 반환 */
	public List<AttachImageDTO> getAttachList(int shipId);
}
