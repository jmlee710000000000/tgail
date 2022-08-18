package org.study.home.controller;

import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.study.home.mapper.MemberMapper;
import org.study.home.model.MemberDTO;
import org.study.home.service.MemberService;

//이메일 인증
import org.springframework.core.io.FileSystemResource;
import java.io.File;

import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

@Controller
public class MemberController {

	@Autowired
	private MemberMapper mapper;
	
	@Autowired
	private MemberService memberService;
	
//  이메일인증
	@Autowired
  	private JavaMailSender mailSender;

	@PostMapping("/memberInsert")
	public String registProcess(/* @RequestParam("user_id")String user_id, */ MemberDTO dto) {
		/* memberService.memberIDcheck(user_id); */
		System.out.println("시발 값"+ dto);
		memberService.memberInsert(dto);
		return "redirect:/";
	}

	@GetMapping("/moveLogin")
	public String moveLogin() {

		return "board/login";
	}

	@GetMapping("/moveRegist")
	public String moveRegist() {
		return "board/Regist";
	}

	@GetMapping("/moveMakeWeb2")
	public String moveMakeWeb2() {
		return "board/makeweb2";
	}

	@GetMapping("/moveMakeWeb3")
	public String moveMakeWeb3() {
		return "board/makeweb3";
	}

	@GetMapping("/moveMakeWeb4")
	public String moveMakeWeb4() {
		return "board/makeweb4";
	}

	@GetMapping("/moveMakeWeb5")
	public String moveMakeWeb5() {
		return "board/makeweb5";
	}

	@GetMapping("/moveMemberUpdate")
	public String moveMemberUpdate() {
		return "board/memberUpdate";
	}

	@GetMapping("/moveMemberRead")
	public String moveMemberRead() {
		return "board/memberRead";
	}
	@GetMapping("/moveMemberRead2")
	public String moveMemberRead2() {
		return "board/memberRead2";
	}

	@PostMapping("/login")
	   public String login(MemberDTO dto, HttpServletRequest request, RedirectAttributes rttr) {
		
	      System.out.println("3333333333333333222" + dto.getUser_id());
	      String resultUserNo = mapper.getRealUserNo(dto.getUser_id());
	      String isAdmin = mapper.getRealisAdmin(dto.getUser_id());
	      MemberDTO userDto = (MemberDTO)mapper.memberRead2(dto.getUser_id());

	      System.out.println("3333333333333333" + resultUserNo);

	      
	      String result = memberService.login(dto);
	      if (result.equals("Success")) {
	         HttpSession session = request.getSession();
	         session.setAttribute("user_id", dto.getUser_id());
	         session.setAttribute("user_no", resultUserNo);
	         session.setAttribute("isAdmin", isAdmin);
	         session.setAttribute("member", userDto);
	         return "redirect:/";
	      } else {
	         rttr.addFlashAttribute("msg", false);
	         return "redirect:/moveLogin";
	      }
	   }

	@GetMapping("/userList")
	public String userList(Model model) {

		List<MemberDTO> list = memberService.userList();
		model.addAttribute("list", list);
		System.out.println("list값" + list);
		return "board/adminMember";
	}


	@GetMapping("/memberDelete")
	public String memberDelete(@RequestParam("user_id") String user_id) {

		System.out.println("user_id 값 확인" + user_id);
		memberService.memberDelete(user_id);

		return "redirect:/adminMember";
	}

	@GetMapping("/memberRead")
	public String memberRead(@RequestParam("user_no") String user_no, Model model) {
		System.out.println("111111111111" + user_no);
		MemberDTO dto = memberService.memberRead(user_no);
		model.addAttribute("dto", dto);
		return "board/memberRead";
	}
	
	

	   @GetMapping("/memberUpdate")
	   public String memberUpdate(@RequestParam("user_no")String user_no, Model model) {
	      MemberDTO dto=memberService.memberRead(user_no);
	       model.addAttribute("dto",dto);
	      return "board/memberUpdate";
	   }
	   
	   @PostMapping("/memberUpdate")
	   public String memberUpdateProcess(MemberDTO dto) {
	      memberService.memberUpdate(dto);
	      System.out.println("update ----" + dto.toString());
	      
      return "redirect:/memberRead?user_no="+dto.getUser_no();
	   }


	@PostMapping("/idCheck")
	@ResponseBody
	public String idCheck(@RequestParam("user_id") String user_id, RedirectAttributes rttr) {
		String result = memberService.idCheck(user_id);
		if (result.equals("useId")) {
			System.out.println("baaaaaaaaaaaad");
			rttr.addFlashAttribute("bad", false);
			return "bad";
		} else {
			System.out.println("gooooooooooooood");
			rttr.addFlashAttribute("good", true);
			return "good";
		}
	}

	@PostMapping("/nickCheck")
	@ResponseBody
	public String nickCheck(@RequestParam("user_nick") String user_nick, RedirectAttributes rttr) {
		String result = memberService.nickCheck(user_nick);
		if (result.equals("useUser_nick")) {
			System.out.println("user_nickbaaaaaaaaaaaad");
			rttr.addFlashAttribute("bad", false);
			return "bad";
		} else {
			System.out.println("user_nickgooooooooooooood");
			rttr.addFlashAttribute("good", true);
			return "good";
		}
	}

	@PostMapping("/emailCheck")
	@ResponseBody
	public String emailCheck(@RequestParam("user_email") String user_email, RedirectAttributes rttr) {
		String result = memberService.emailCheck(user_email);
		if (result.equals("useUser_email")) {
			System.out.println("user_emailbaaaaaaaaaaaad");
			rttr.addFlashAttribute("bad", false);
			return "bad";
		} else {
			System.out.println("user_emailgooooooooooooood");
			rttr.addFlashAttribute("good", true);
			return "good";
		}
	}

	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {

		HttpSession session = request.getSession();
		session.invalidate();

		return "redirect:/";
	}
	
	@RequestMapping(value = "/sendMail", method = RequestMethod.GET)
    public void sendMailTest() throws Exception{
        
        String subject = "test 메일";
        String content = "메일 테스트 내용";
        String from = "wklee1999@naver.com";
        String to = "jmlee7100000000@gmail.com";
        
        try {
            MimeMessage mail = mailSender.createMimeMessage();
            MimeMessageHelper mailHelper = new MimeMessageHelper(mail,true,"UTF-8");
           
            mailHelper.setFrom(from);
            mailHelper.setTo(to);
            mailHelper.setSubject(subject);
            mailHelper.setText(content, true);
            // true는 html을 사용하겠다는 의미입니다.
            
            FileSystemResource file = new FileSystemResource(new File("/home/lwk/test.txt")); 
            mailHelper.addAttachment("test.txt", file);
            
            /*
             * 단순한 텍스트만 사용하신다면 다음의 코드를 사용하셔도 됩니다. 
             */
            mailHelper.setText(content);
            mailSender.send(mail);
            
        } catch(Exception e) {
            e.printStackTrace();
        }
        
    }
   /* 이메일 인증 */
    @RequestMapping(value="/mailCheck", method=RequestMethod.GET)
    @ResponseBody
    public String mailCheckGET(String user_email) throws Exception{
        
        /* 뷰(View)로부터 넘어온 데이터 확인 */
      
      
      
        System.out.println("이메일 데이터 전송 확인");
        System.out.println("인증번호 : " + user_email);
       
        Random random = new Random();
        int checkNum = random.nextInt(888888) + 111111;
        System.out.println("인증번호 " + checkNum);
        
        String setFrom = "wklee1999@naver.com";
        String toMail = user_email;
        String title = "회원가입 인증 이메일 입니다.";
        String content = "홈페이지를 방문해주셔서 감사합니다." +
                            "<br><br>" + 
                            "인증 번호는 " + checkNum + "입니다." + 
                            "<br>" + 
                            "해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
        
        try {
               
               MimeMessage message = mailSender.createMimeMessage();
               MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
               helper.setFrom(setFrom);
               helper.setTo(toMail);
               helper.setSubject(title);
               helper.setText(content,true);
               mailSender.send(message);
               
           }catch(Exception e) {
               e.printStackTrace();
           }

          String num = Integer.toString(checkNum);
          return num;
    }
 

}
