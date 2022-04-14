package com.hanulso.controller;

import java.io.PrintWriter;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hanulso.domain.AlertVO;
import com.hanulso.domain.CorVO;
import com.hanulso.domain.Criteria;
import com.hanulso.domain.KnowledgeVO;
import com.hanulso.domain.PageVO;
import com.hanulso.domain.PremiumVO;
import com.hanulso.security.CustomUserDetails;
import com.hanulso.service.AlertService;
import com.hanulso.service.NoticeService;
import com.hanulso.service.PremiumService;
import com.hanulso.service.UserService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/alert/*")
public class AlertController {

	@Setter(onMethod_ = @Autowired)
	private AlertService service;

	@Setter(onMethod_ = @Autowired)
	private NoticeService noticeservice;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private PremiumService premiumService;

	@GetMapping("/alert_list.do")
	public void alert_list(Criteria cri, Model model) {
		List<KnowledgeVO> list = noticeservice.notice_list(cri);
		int total = noticeservice.getTotalCount(cri);
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", new PageVO(cri, total));
		
		int alertCnt = 10; // 표시할 알림의 개수
		
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (!principal.toString().equals("anonymousUser")) { // 로그인 되어 있는 경우
			CustomUserDetails user = (CustomUserDetails) principal;
			List<AlertVO> alertList = service.alert_list(user.getUsername(), alertCnt);
			log.info(alertList);
			model.addAttribute("alertList", alertList);
			// one_alert 테이블에서 username이 로그인 한 유저인 행을 모두 가져온다
			
			// 중개사 회원으로 로그인 한 경우 판별 후 이름 넘기기
			CorVO cvo = userService.member_select(user.getUsername());
			if(cvo != null) {
				
				PremiumVO prevo = premiumService.premium_select(user.getUsername());
				
				if(prevo != null) {
					
					int dayCheck = premiumService.premium_daycheck(user.getUsername());
					
					if(dayCheck<0) {
						dayCheck = 0;
					}
					
					model.addAttribute("dayCheck", dayCheck);
					model.addAttribute("prevo", prevo);
					
				}
				
				model.addAttribute("username", user.getUsername());
			}
		}
	}
	
	@PostMapping("/premium_insert_pro.do")
	public void premium_insert(PremiumVO prevo,HttpServletResponse response) {
		if(!prevo.getMerchant_uid().isEmpty()) {
			premiumService.premium_insert(prevo);
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			try {
				PrintWriter out = response.getWriter();
				out.println("<script>alert('프리미엄 멤버십 가입을 환영합니다.');location.href='/';</script>");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	@PostMapping("/premium_update_pro.do")
	public void premium_update(PremiumVO prevo,HttpServletResponse response) {
		if(!prevo.getMerchant_uid().isEmpty()) {
			premiumService.premium_update(prevo);
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			try {
				PrintWriter out = response.getWriter();
				out.println("<script>alert('프리미엄 멤버십을 연장하셨습니다.');location.href='/';</script>");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
}
