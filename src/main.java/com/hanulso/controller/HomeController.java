package com.hanulso.controller;

import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hanulso.domain.DongCheckVO;
import com.hanulso.domain.FavoriteVO;
import com.hanulso.domain.JusoVO;
import com.hanulso.domain.PremiumVO;
import com.hanulso.domain.UserVO;
import com.hanulso.security.CustomUserDetails;
import com.hanulso.service.IndexService;
import com.hanulso.service.PremiumService;
import com.hanulso.service.ProductService;
import com.hanulso.service.UserService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private IndexService service;

	@Autowired
	private UserService userService;

	@Autowired
	private ProductService productService;
	
	@Autowired
	private PremiumService premiumService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		pCheck_from_premium_list();
		model.addAttribute("tip", service.main_tip_list());
		model.addAttribute("top", service.main_top_list());
		model.addAttribute("faArr", avgCal());
		return "index";
	}
	
	
	// 기간 0일 이하 남은 사람들 pCheck = 0 으로 바꿔주는 메소드
	// 호출은 어디서?? > 홈이 실행 될 때 마다	
	public void pCheck_from_premium_list() {
		List<PremiumVO> preList = premiumService.premium_list();
		for (PremiumVO prevo : preList) {
			int dayCheck = premiumService.premium_daycheck(prevo.getUsername());
			if(dayCheck<0) {
				premiumService.premium_pCheck_update(prevo.getUsername());
			}
		}
	}

	@RequestMapping("/include/jusoPopup.do")
	public void jusoPopup(JusoVO jusovo) {

	}

	// 해당 페이지에 접근 권한이 없을경우 표시
	@RequestMapping("/no_auth")
	public void no_auth() {
	}

	public String[] avgCal() {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String faArr[] = null;
		if (!principal.toString().equals("anonymousUser")) {
			CustomUserDetails user = (CustomUserDetails) principal;
			UserVO uvo = userService.user_select(user.getUsername());
			faArr = uvo.getFavorite().split(",");
		}
		return faArr;
	}

	@RequestMapping(value = "dongCheck", method = RequestMethod.POST, produces = {
			org.springframework.http.MediaType.APPLICATION_JSON_UTF8_VALUE })
	public @ResponseBody DongCheckVO dongCheck(@RequestParam("arr") String arr) {
		DongCheckVO dvo = new DongCheckVO();

		int row = productService.product_count_with_addr2(arr);
		
		if(row!=0) {
			dvo.setRoomRent(Math.round(productService.room_rent_cal(arr)));
			dvo.setRoomDeposit(Math.round(productService.room_deposit_cal(arr)));
			dvo.setOffRent(Math.round(productService.off_rent_cal(arr)));
			dvo.setOffDeposit(Math.round(productService.off_deposit_cal(arr)));
			dvo.setAllRent(Math.round(productService.all_rent_cal(arr)));
			dvo.setAllDeposit(Math.round(productService.all_deposit_cal(arr)));
		} else {
			dvo.setRoomRent(-1);
			dvo.setRoomDeposit(-1);
			dvo.setOffRent(-1);
			dvo.setOffDeposit(-1);
			dvo.setAllRent(-1);
			dvo.setAllDeposit(-1);
		}
		
		return dvo;
	}

}
