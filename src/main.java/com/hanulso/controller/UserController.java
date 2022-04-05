package com.hanulso.controller;

import java.util.HashMap;
import java.util.Random;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hanulso.domain.CorVO;
import com.hanulso.domain.UserVO;
import com.hanulso.service.UserService;

@Controller
@RequestMapping("/user/*")
public class UserController {

	@Autowired
	private UserService service;
	
	@Autowired
	private PasswordEncoder pwencoder;
	
	@Autowired
	private JavaMailSender mailSender;

	@GetMapping("/user_login.do")
	public void user_login_form() {}
	
	@PostMapping("/user/user_logout.do")
	public String userLogout() {
		return "redirect:/";
	}
	
	@GetMapping("/mailCheck.do")
	public void mailCheckForm(UserVO uvo) {
		System.out.println(uvo);
		System.out.println("메일체크");
	}
	
	// 메일 체크
	@PostMapping("/mailCheck_pro.do")
	public String mailCheck(UserVO uvo,Model model) {
		System.out.println("프로");
		System.out.println(uvo);
		/* 이메일 보내기 */
		String setFrom = "onepick.jsl51@gmail.com";
		String toMail = uvo.getUsername();
		System.out.println(uvo.getUsername());
		String title = "회원가입 인증 이메일 입니다.";
		String contents = "<h1>[이메일 인증]</h1><br><p>아래 링크를 클릭하시면 이메일 인증이 완료됩니다.</p>"
                + "<a href='http://localhost:8123/user/mailCheckUp.do?username="+uvo.getUsername()+"&active="+uvo.getActive()+"'>이메일 인증 확인</a>";
		
		// active 난수생성 해서 DB에 넣을때
		// 난수값 서로 비교해주고 acitve 에다가 넣어주기
		
		Random random = new Random();
		int num = random.nextInt(888888)+111111;
		
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			helper.setFrom(setFrom);
			helper.setTo(toMail);
			helper.setSubject(title);
			helper.setText(contents, true);
			mailSender.send(message);
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		
		return "redirect:/mailCheckUp.do";
	}
	
	@GetMapping("/mailCheckUp.do")
	public String mailCheckUp(UserVO uvo) {
		service.mailCheckUp(uvo.getUsername());
		System.out.println("확인");
		return "redirect:/";
	}
	
	// 카카오 관련
	@ResponseBody
	@RequestMapping(value="/kakaoLogin.do", method = RequestMethod.GET, produces = "application/json")
	public String kakaoLogin(@RequestParam(value = "code", required = false) String code) throws Exception{
		System.out.println("#########" + code);
		
		String access_Token = service.getAccessToken(code);
		System.out.println("###access_Token#### : " + access_Token);
		
		HashMap<String, Object> userInfo = service.getUserInfo(access_Token);
		System.out.println("###access_Token### : " + access_Token);
		System.out.println("###nickname### : " + userInfo.get("nickname"));
		System.out.println("###email### : " + userInfo.get("email"));
		
		return "redirect:/";
	}
	
	@GetMapping("/user_register.do")
	public void user_register() {}
	
	@GetMapping("/user_register_cor.do")
	public void user_register_cor() {}
	
	@GetMapping("/user_register_admin.do")
	public void user_register_admin() {}
	
	@GetMapping("/user_choose.do")
	public void user_choose() {}
	
	@PostMapping("/user_register_pro.do")
	public String user_register_pro(UserVO uvo) {
		String inputPass = pwencoder.encode(uvo.getPassword());
		uvo.setPassword(inputPass);
		service.userRegister(uvo);
		
		System.out.println(uvo);
		System.out.println("레지스터프로");
		
		return "/user/mailCheck";
	}
	
	@PostMapping("/user_register_cor_pro.do")
	public String user_register_cor_pro(UserVO uvo, CorVO cvo, RedirectAttributes rttr) {
		String inputPass = pwencoder.encode(uvo.getPassword());
		uvo.setPassword(inputPass);
		service.corRegister(uvo, cvo);
		return "redirect:/";
	}
	
	@PostMapping("/user_register_admin_pro.do")
	public String user_register_admin_pro(UserVO uvo, RedirectAttributes rttr) {
		String inputPass = pwencoder.encode(uvo.getPassword());
		uvo.setPassword(inputPass);
		service.adminRegister(uvo);
		return "redirect:/";
	}
	
}
