package com.hanulso.controller;

import java.util.HashMap;

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

import lombok.Setter;

@Controller
@RequestMapping("/user/*")
public class UserController {

	@Setter(onMethod_ = @Autowired)
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
	
	@GetMapping("/mailCheck_Request")
	public void mailCheckRequestForm() {
		
	}
	
	@GetMapping("/mailCheck.do")
	public void mailCheckForm(UserVO uvo) {
		System.out.println(uvo);
		System.out.println("mailCheck.do 실행 확인");
	}

	// active 위한 메일 발송
	public void mailCheck(UserVO uvo) {
		System.out.println("mailCheck_pro.do 실행 확인");
		System.out.println(uvo);
		/* 이메일 보내기 */
		String setFrom = "onepick.jsl51@gmail.com";
		String toMail = uvo.getUsername();
		System.out.println(uvo.getUsername());
		String title = "회원가입 인증 이메일 입니다.";
		String contents = "<h1>[이메일 인증]</h1><br><p>아래 링크를 클릭하시면 이메일 인증이 완료됩니다.</p>"
                + "<a href='http://localhost:8123/user/mailCheck_done.do?username="+uvo.getUsername()+"&active_key="+uvo.getPassword()+"'>이메일 인증 확인</a>";
		
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
	}
	
	// 이메일 인증이 완료 된 회원이 active 가능
	@GetMapping("/mailCheck_done.do")
	public void mailCheckUp(@RequestParam("username") String username, @RequestParam("active_key") String password) {
		service.mailCheckUp(username, password);
		System.out.println("mailCheckUp.do 실행 확인");
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
		System.out.println("회원가입  with notActive");
//		mailCheck(uvo);
//		// 회원가입과 동시에 active 위한 메일 발송
//		return "/user/mailCheck_Request";
		return "/";
	}
	
	@PostMapping("/user_register_cor_pro.do")
	public String user_register_cor_pro(UserVO uvo, CorVO cvo, RedirectAttributes rttr) {
		String inputPass = pwencoder.encode(uvo.getPassword());
		uvo.setPassword(inputPass);
		service.corRegister(uvo, cvo);
//		mailCheck(uvo);
//		// 회원가입과 동시에 active 위한 메일 발송
//		return "/user/mailCheck_Request";
		return "/";
	}
	
	@PostMapping("/user_register_admin_pro.do")
	public String user_register_admin_pro(UserVO uvo, RedirectAttributes rttr) {
		String inputPass = pwencoder.encode(uvo.getPassword());
		uvo.setPassword(inputPass);
		service.adminRegister(uvo);
//		mailCheck(uvo);
//		// 회원가입과 동시에 active 위한 메일 발송
//		return "/user/mailCheck_Request";
		return "/";
	}
	
}
