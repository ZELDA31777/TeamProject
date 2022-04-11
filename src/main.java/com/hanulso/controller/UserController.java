package com.hanulso.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hanulso.domain.CorVO;
import com.hanulso.domain.UserVO;
import com.hanulso.service.UserService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/user/*")
@Log4j
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
	
	@GetMapping("/mailCheck_Request.do")
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
	
	@GetMapping("/user_register.do")
	public void user_register() {}
	
	@GetMapping("/user_register_cor.do")
	public void user_register_cor() {}
	
	@GetMapping("/user_register_admin.do")
	public void user_register_admin() {}
	
	@GetMapping("/user_choose.do")
	public void user_choose() {}
	
	// 체크박스 favorite 는 ,로 구분되서 넘어옴
	@PostMapping("/user_register_pro.do")
	public String user_register_pro(UserVO uvo, Model model) {
		String inputPass = pwencoder.encode(uvo.getPassword());
		uvo.setPassword(inputPass);
		service.userRegister(uvo);
		
		System.out.println(uvo);
		System.out.println("회원가입  with notActive");
		mailCheck(uvo);
		model.addAttribute("username", uvo.getUsername());
		// 회원가입과 동시에 active 위한 메일 발송
		return "/user/mailCheck_Request";
	}
	
	@PostMapping("/user_register_cor_pro.do")
	public String user_register_cor_pro(UserVO uvo, CorVO cvo, MultipartFile pimg ,RedirectAttributes rttr) {
		String inputPass = pwencoder.encode(uvo.getPassword());
		uvo.setPassword(inputPass);
		
		/* 파일업로드 시작 */
		String uploadFolder = "C:\\upload";
		String folderPath = getFolder();
		File uploadPath = new File(uploadFolder, folderPath);
		if (!uploadPath.exists()) {
			uploadPath.mkdirs();
		}
		
		try {
			if (!pimg.isEmpty()) { // 업로드 된 파일이 있을때에만
				String uploadFileName = UUID.randomUUID().toString() /* 중복 처리 */
						+"_"+pimg.getOriginalFilename().substring(pimg.getOriginalFilename().lastIndexOf("\\")+1); // 모든 경로까지 저장되는 ie 브라우저용 처리
				
				File saveFile = new File(uploadPath, uploadFileName);
				pimg.transferTo(saveFile);
				
				String savePath = folderPath+File.separator+uploadFileName;
				
				
				cvo.setProfile(savePath);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		/* 파일업로드 끝 */
		
		service.corRegister(uvo, cvo);
		mailCheck(uvo);
		// 회원가입과 동시에 active 위한 메일 발송
		return "/user/mailCheck_Request";
	}
	
	
	// 날짜로 년도/월/일 로 경로 생성
	public String getFolder() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date(); // 오늘날짜
		return sdf.format(date).replace("-", File.separator); // File.separator : 윈도우의 경우 "//"
	}
	
	
	@PostMapping("/user_register_admin_pro.do")
	public String user_register_admin_pro(UserVO uvo, RedirectAttributes rttr) {
		String inputPass = pwencoder.encode(uvo.getPassword());
		uvo.setPassword(inputPass);
		service.adminRegister(uvo);
		mailCheck(uvo);
		// 회원가입과 동시에 active 위한 메일 발송
		return "/user/mailCheck_Request";
	}
	
	
	// 비밀번호 확인
	@GetMapping("/user_password_check.do")
	public void user_password_check(String username, Model model) {
		UserVO uvo = service.user_select(username);
		model.addAttribute("uvo", uvo);
	}
	
	// 비밀번호 확인 에러
	@GetMapping("/user_password_check_error.do")
	public void user_password_check_error(String username, Model model) {
		UserVO uvo = service.user_select(username);
		model.addAttribute("uvo", uvo);
	}
	
	@GetMapping("/user_modify_cor.do")
	public void user_modify_cor() {
		
	}
	
	@PostMapping("/user_password_check_pro.do")
	public String user_password_check_pro(String username, String password, Model model) {
		UserVO uvo = service.user_select(username);
		if(pwencoder.matches(password, uvo.getPassword())) {
//			return "/user/user_modify";
			if(uvo.getGrade().equals("ROLE_USER")||uvo.getGrade().equals("ROLE_ADMIN")||uvo.getGrade().equals("ROLE_SUPER_ADMIN")) {
				model.addAttribute("uvo", uvo);
				return "/user/user_modify";
			}
			if(uvo.getGrade().equals("ROLE_MEMBER")) {
				CorVO cvo = service.member_select(username);
				model.addAttribute("uvo", uvo);
				model.addAttribute("cvo", cvo);
				return "/user/user_modify_cor";
			}
			return "/user/mailCheck_Request"; // 예외 처리
		}else {
			return "/user/user_password_check_error";
		}
	}
	
	@PostMapping("/user_modify_pro.do")
	public String user_modify_pro(UserVO uvo, Model model) {
			String inputPass = pwencoder.encode(uvo.getPassword());
			uvo.setPassword(inputPass);
			service.userModify(uvo);
			model.addAttribute("username", uvo.getUsername());
			return "/user/user_modify_check";
	}
	
	@GetMapping("/user_modify_kakao.do")
	public void user_modify_kakao(String username, Model model) {
		UserVO uvo = service.user_select(username);
		model.addAttribute("uvo", uvo);
	}
	
	@PostMapping("/user_modify_kakao_pro.do")
	public String user_modify_kakao_pro(UserVO uvo, Model model) {
		service.userModify(uvo);
		model.addAttribute("username", uvo.getUsername());
		return "/user/user_modify_check";
	}
	
}
