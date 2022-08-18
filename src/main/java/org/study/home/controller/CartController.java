package org.study.home.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.study.home.model.CartDTO;
import org.study.home.model.MemberDTO;
import org.study.home.service.CartService;

@Controller
public class CartController {
	@Autowired
	private CartService cartService;
	
	@PostMapping("/cart/add")
	@ResponseBody
	public String addCartPOST(CartDTO cart, HttpServletRequest request) {
		// 로그인 체크
		System.out.println("addCartPost==========================000");
		HttpSession session = request.getSession();
		MemberDTO dto = (MemberDTO)session.getAttribute("member");
		System.out.println("addCartPost==========================0" + dto);
		if(dto == null) {
			return "5";
		}
		
		// 카트 등록
		System.out.println("addCartPost==========================1");
		int result = cartService.addCart(cart);
		System.out.println("addCartPost==========================2");
		
		return result + "";
	}
	
	
	@GetMapping("/cart/{user_id}")
	public String cartPageGET(@PathVariable("user_id") String user_id, Model model) {
		System.out.println("cartPageGET==========================1"+ user_id);
		
		model.addAttribute("cartInfo", cartService.getCartList(user_id));
	
		return "/cart";
	}
	/* 장바구니 수량 수정 */
	@PostMapping("/cart/update")
	public String updateCartPOST(CartDTO cart) {
		
			cartService.modifyCount(cart);
			System.out.println("contoller 통과");
		return "redirect:/cart/" + cart.getUser_id();
	}
	
	/* 장바구니 수량 수정 */
	@PostMapping("/cart/delete")
	public String deleteCartPOST(CartDTO cart) {
		
		cartService.deleteCart(cart.getCartId());
		
		return "redirect:/cart/" + cart.getUser_id();
		
	}	
	
}
