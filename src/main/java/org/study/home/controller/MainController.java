package org.study.home.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	@GetMapping("/")
	public String index() {
		return "index";
	}
	
	@GetMapping("/community")
	public String community() {
		return "board/community";
	}
	
	@GetMapping("/gameInfo")
	public String gameInfo() {
		return "info/gameInfo";
	}
	
	@GetMapping("/han")
	public String gohan() {
		return "board/han";
	}
	
	/*
	 * @GetMapping("/adminMember") public String adminMember() { return
	 * "board/adminMember"; }
	 */
}
