package com.hanulso.controller;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.hanulso.domain.UserVO;
import com.hanulso.service.UserService;

@Controller
public class KakaoController {
   //03-31 최종
   @Autowired
   private UserService service;
   
   @Autowired
   private PasswordEncoder pwencoder;
   
   @RequestMapping(value = "/login/getKakaoAuthUrl") 
   public @ResponseBody String getKakaoAuthUrl(
         HttpServletRequest request) throws Exception {
      String reqUrl = 
            "https://kauth.kakao.com/oauth/authorize"
                  + "?client_id=ec529ddcb0a1e3f154fc6847679fe18a"
                  + "&redirect_uri=http://localhost:8123/kakaoLogin"
                  + "&response_type=code";

      return reqUrl;
   }
   // 카카오 연동정보 조회
   @RequestMapping(value = "/kakaoLogin") 
   public String oauthKakao(String code , Model model, HttpSession session) throws Exception {
      System.out.println("#########" + code); 
      String access_Token = getAccessToken(code); 
      System.out.println("###access_Token#### : " +access_Token);

      HashMap<String, Object> userInfo = getUserInfo(access_Token);
      //      System.out.println("###access_Token#### : " + access_Token);
      //      System.out.println("###userInfo#### : " + userInfo.get("email"));
      //      System.out.println("###nickname#### : " + userInfo.get("nickname"));   
      //      System.out.println("###id#### : " + userInfo.get("id"));

      //회원가입때 사용할 컬럼값들 변수설정하기 
      String username = (String) userInfo.get("email"); 
      String nickname = (String) userInfo.get("nickname"); 
      String password = (String)userInfo.get("id");
      System.out.println("테스트"+username);
      System.out.println(nickname);
      System.out.println(password);
      //DB에서 email 있는지 찾기 (회원인지 아닌지) 
      int row = service.user_check(username); 
      System.out.println(row);
      UserVO uvo= null; //회원가입이 안되있는 경우 
      if(row==0) { 
         uvo = new UserVO();
         uvo.setUsername(username); 
         uvo.setNickname(nickname);
         uvo.setPassword(pwencoder.encode(password)); //db에 아이디,비밀번호,이름 등록(= 회원가입 완료)
         uvo.setActive("active");
         uvo.setFavorite("favorite_test_msg");
         uvo.setKCheck("checked");
         service.kakaoUserRegister(uvo);
         System.out.println(uvo);
         uvo = service.user_select(username); //세션 생성
         System.out.println("회원가입 완료 후 로그인");
      }else {
         uvo = service.user_select(username); 
         System.out.println("로그인성공:"+uvo.getUsername());
         System.out.println("회원인 사람 로그인");
      } 
      JSONObject kakaoInfo = new JSONObject(userInfo);
      model.addAttribute("kakaoInfo", kakaoInfo); 
      model.addAttribute("uvo",uvo);
      model.addAttribute("kakaoPassword",password);
      session.setAttribute("kakao", access_Token);
      return "/user/user_login";
   }

   //토큰발급
   public String getAccessToken (String authorize_code) {
      String access_Token = "";
      String refresh_Token = "";
      String reqURL = "https://kauth.kakao.com/oauth/token";

      try {
         URL url = new URL(reqURL);

         HttpURLConnection conn = (HttpURLConnection) url.openConnection();

         //  URL연결은 입출력에 사용 될 수 있고, POST 혹은 PUT 요청을 하려면 setDoOutput을 true로 설정해야함.
         conn.setRequestMethod("POST");
         conn.setDoOutput(true);

         //   POST 요청에 필요로 요구하는 파라미터 스트림을 통해 전송
         BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
         StringBuilder sb = new StringBuilder();
         sb.append("grant_type=authorization_code");
         sb.append("&client_id=ec529ddcb0a1e3f154fc6847679fe18a");  // rest key
         sb.append("&redirect_uri=http://localhost:8123/kakaoLogin");     // redirect_uri
         sb.append("&code=" + authorize_code);
         bw.write(sb.toString());
         bw.flush();

         //    결과 코드가 200이라면 성공
         //int responseCode = conn.getResponseCode();
         //System.out.println("responseCode : " + responseCode);

         //    요청을 통해 얻은 JSON타입의 Response 메세지 읽어오기
         BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
         String line = "";
         String result = "";

         while ((line = br.readLine()) != null) {
            result += line;
         }
         //System.out.println("response body : " + result);

         //    Gson 라이브러리에 포함된 클래스로 JSON파싱 객체 생성
         JsonParser parser = new JsonParser();
         JsonElement element = parser.parse(result);

         access_Token = element.getAsJsonObject().get("access_token").getAsString();
         refresh_Token = element.getAsJsonObject().get("refresh_token").getAsString();

         System.out.println("access_token : " + access_Token);
         System.out.println("refresh_token : " + refresh_Token);

         br.close();
         bw.close();
      } catch (IOException e) {
         e.printStackTrace();
      }

      return access_Token;
   }

   //유저정보조회
   public HashMap<String, Object> getUserInfo (String access_Token) {

      //    요청하는 클라이언트마다 가진 정보가 다를 수 있기에 HashMap타입으로 선언
      HashMap<String, Object> userInfo = new HashMap<String, Object>();
      String reqURL = "https://kapi.kakao.com/v2/user/me";
      try {
         URL url = new URL(reqURL);
         HttpURLConnection conn = (HttpURLConnection) url.openConnection();
         conn.setRequestMethod("GET");

         //    요청에 필요한 Header에 포함될 내용
         conn.setRequestProperty("Authorization", "Bearer " + access_Token);

         int responseCode = conn.getResponseCode();
         System.out.println("responseCode : " + responseCode);

         BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));

         String line = "";
         String result = "";

         while ((line = br.readLine()) != null) {
            result += line;
         }
         //System.out.println("response body : " + result);

         JsonParser parser = new JsonParser();
         JsonElement element = parser.parse(result);

         JsonObject properties = element.getAsJsonObject().get("properties").getAsJsonObject();
         JsonObject kakao_account = element.getAsJsonObject().get("kakao_account").getAsJsonObject();

         String nickname = properties.getAsJsonObject().get("nickname").getAsString();
         String email = kakao_account.getAsJsonObject().get("email").getAsString();
         String id = element.getAsJsonObject().get("id").getAsString();

         //         System.out.println(id);
         //         System.out.println(access_Token);
         //         System.out.println(nickname);
         //         System.out.println(email);

         userInfo.put("accessToken", access_Token);
         userInfo.put("nickname", nickname);
         userInfo.put("id", id);
         userInfo.put("email", email);
      } catch (IOException e) {
         e.printStackTrace();
      }

      return userInfo;
   }
//   //카카오 로그아웃용 메소드 
//   public void unlink(String access_Token) {
//      String reqURL = "https://kapi.kakao.com/v1/user/unlink";
//
//      try { 
//         URL url = new URL(reqURL); 
//         HttpURLConnection conn = (HttpURLConnection)url.openConnection(); 
//         conn.setRequestMethod("POST");
//         conn.setRequestProperty("Authorization", "Bearer " + access_Token); 
//         int responseCode = conn.getResponseCode(); 
//         System.out.println("responseCode : " + responseCode); 
//         System.out.println(""); 
//         BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream())); 
//         String result = ""; 
//         String line = ""; 
//         while ((line = br.readLine()) != null) { 
//            result += line; 
//         } 
//         System.out.println(result); 
//      } catch (IOException e) {
//         e.printStackTrace(); 
//      } 
//   }
//   @PostMapping("/kakaoLogout") 
//   public String unlink(HttpSession session) {
//      unlink((String)session.getAttribute("kakao")); 
//      return "/user/userlogout"; 
//   }


}
