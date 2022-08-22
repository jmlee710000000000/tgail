package org.study.home.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.study.home.model.MemberDTO;
import org.study.home.model.OrderDTO;
import org.study.home.model.OrderItemDTO;
import org.study.home.model.OrderPageDTO;
import org.study.home.service.MemberService;
import org.study.home.service.OrderService;

@Controller
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private MemberService memberService;
		
	@GetMapping("/order/{user_id}")
	public String orderPgaeGET(@PathVariable("user_id") String user_id, OrderPageDTO opd, Model model) {
		
		model.addAttribute("orderList", orderService.getGoodsInfo(opd.getOrders()));
		model.addAttribute("memberInfo", memberService.getMemberInfo(user_id));
		
		return "/order";
		
	}
	
	@PostMapping("/order")
	public String orderPagePost(OrderDTO od, HttpServletRequest request, Model model) {
		
		System.out.println(od+"오더 컨트롤러 ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ");		
		orderService.order(od);

		MemberDTO member = new MemberDTO();
		member.setUser_id(od.getMemberId());
		HttpSession session = request.getSession();

		int price=0 , shipPrice = 0;
		String orderId = "";
		
		List<OrderItemDTO> orderItems = od.getOrders();
		
		String memberId = od.getMemberId();

		OrderItemDTO orderItem;
		for(int i = 0; i < orderItems.size();i++)
		{
			orderItem = orderItems.get(i);
			price =+ orderItem.getShipPrice();
			shipPrice += orderItem.getShipPrice();
			orderId = orderItem.getOrderId();
		}
		int totalPrice = price;
		int totalShipPrice = shipPrice;
		int tax_free_amount = (int) (totalPrice*0.1);
		
		model.addAttribute("memberId", memberId);
		model.addAttribute("orderId", orderId);
		model.addAttribute("orderItems", od.getOrders());
		model.addAttribute("orderItemCount", od.getOrders().size());
		model.addAttribute("totalPrice", totalPrice);
		model.addAttribute("totalShipPrice", totalShipPrice);
		model.addAttribute("tax_free_amount", tax_free_amount);		
		
		try {
			MemberDTO memberLogin = memberService.memberLogin(member);
			memberLogin.setMemberPw("");
			session.setAttribute("member", memberLogin);
			session.setAttribute("ord", od);
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return "/kakaoPay";
	}
}
