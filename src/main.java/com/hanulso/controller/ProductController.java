package com.hanulso.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.hanulso.domain.ProductVO;
import com.hanulso.service.ProductService;

@Controller
@RequestMapping("/product/*")
public class ProductController {
	
	@Autowired
	private ProductService service;
	
	@GetMapping("/product_view.do")
	public void product_view(@RequestParam("pno") int pno, Model model ) {
		ProductVO pvo = service.product_view(pno);
		model.addAttribute("pvo", pvo);
		model.addAttribute("pList", service.product_view_list(pvo.getUsername()));
		
		// 사진파일 리스트 (썸네일 제외)
		// jsp파일에서 경로를 /upload/{picList의 하나} 형태로 사용
		String[] picList = pvo.getPicture().split("/");
		model.addAttribute("picList", picList);
		model.addAttribute("picListLength", picList.length);
	}
	
	@GetMapping("/product_write_backUp.do")
	public void product_write_backUp() {}
	
	@GetMapping("/product_write.do")
	public void product_write() {}
	
	@GetMapping("/product_write3.do")
	public void product_write3() {}
	
	@PostMapping("/product_write_pro.do")
	public String product_write_pro(ProductVO pvo, MultipartFile[] pictureFile) {
		System.out.println(pvo);
		
		/* 파일업로드 시작 */
		String uploadFolder = "C:\\upload";
		String folderPath = getFolder();
		File uploadPath = new File(uploadFolder, folderPath);
		if (!uploadPath.exists()) {
			uploadPath.mkdirs();
		}
		
		String picture = null; // 사진을 *로 구분하여 저장
		try {
			for (int i=0; i<pictureFile.length; i++) {
				MultipartFile mfile = pictureFile[i];
				if (!mfile.isEmpty()) { // 업로드 된 파일이 있을때에만
					String uploadFileName = UUID.randomUUID().toString() /* 중복 처리 */
							+"_"+mfile.getOriginalFilename().substring(mfile.getOriginalFilename().lastIndexOf("\\")+1); // 모든 경로까지 저장되는 ie 브라우저용 처리
					
					File saveFile = new File(uploadPath, uploadFileName);
					mfile.transferTo(saveFile);
					
					String savePath = folderPath+File.separator+uploadFileName;
					
					if (i!=0) {
						if (picture != null) {
							picture += "/"+savePath;
						} else {
							picture = savePath;
						}
					} else {
						pvo.setThumbnail(savePath);
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		pvo.setPicture(picture);
		
		/* 파일업로드 끝 */
		
		
		service.product_insert(pvo);
		return "redirect:/";
	}
	
	// 날짜로 년도/월/일 로 경로 생성
	public String getFolder() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date(); // 오늘날짜
		return sdf.format(date).replace("-", File.separator); // File.separator : 윈도우의 경우 "//"
	}
	
	
}
