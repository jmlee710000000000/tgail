package org.study.home.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.study.home.mapper.MemberMapper;
import org.study.home.model.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberMapper mapper;

	@Autowired
	private BCryptPasswordEncoder pwEncoder;

	@Override
	public void memberInsert(MemberDTO dto) {

		dto.setUser_pw(pwEncoder.encode(dto.getUser_pw()));
		mapper.memberInsert(dto);
	}

	@Override
	public String login(MemberDTO dto) {

		String resultPW = mapper.getRealPassword(dto.getUser_id());
		System.out.println("resultPW 값 : " + resultPW);
		boolean loginFilter = pwEncoder.matches(dto.getUser_pw(), resultPW);
		if (loginFilter) {
			return "Success";
		} else {
			return "Fail";
		}
	}

	@Override
	public List<MemberDTO> userList() {

		return mapper.userList();
	}

	/*
	 * @Override public void memberIDcheck(String user_id) {
	 * mapper.memberIDcheck(user_id);
	 * 
	 */
	@Override
	public String idCheck(String user_id) {
		String resultPW = mapper.idCheck(user_id);
		System.out.println("idCheck 값 : " + resultPW);
		if (resultPW != null || user_id == "") {
			System.out.println("22222222");
			return "useId";
		} else {
			System.out.println("111111");
			return "notUseId";
		}
	}

	@Override
	public String nickCheck(String user_nick) {
		String resultPW = mapper.nickCheck(user_nick);
		System.out.println("nickCheck 값 : " + resultPW);
		if (resultPW != null || user_nick == "") {
			System.out.println("22222222");
			return "useUser_nick";
		} else {
			System.out.println("111111");
			return "notUseUser_nick";
		}
	}

	@Override
	public String emailCheck(String user_email) {
		String resultPW = mapper.emailCheck(user_email);
		System.out.println("emailCheck 값 : " + resultPW);
		if (resultPW != null || user_email == "") {
			System.out.println("22222222");
			return "useUser_email";
		} else {
			System.out.println("111111");
			return "notUseUser_email";
		}
	}

	@Override
	public void memberDelete(String user_id) {
		mapper.memberDelete(user_id);

	}

	@Override
	public void memberUpdate(MemberDTO dto) {
		mapper.memberUpdate(dto);
	}

	@Override
	public MemberDTO memberRead(String user_no) {
		return mapper.memberRead(user_no);
	}


	@Override
	public MemberDTO memberRead2(String user_id) {
		return mapper.memberRead2(user_id);
	}
	/* 주문자 정보 */
	@Override
	public MemberDTO getMemberInfo(String user_id) {
		
		
		
		return mapper.getMemberInfo(user_id);
		
	}
	
	@Override
	public MemberDTO memberLogin(MemberDTO dto)
	{
		String resultPW = mapper.getRealPassword(dto.getUser_id());
		System.out.println("resultPW 값 : " + resultPW);
		boolean loginFilter = pwEncoder.matches(dto.getUser_pw(), resultPW);
		
		return dto;
	}

	
}
