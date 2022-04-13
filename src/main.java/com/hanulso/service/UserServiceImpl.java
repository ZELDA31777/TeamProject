package com.hanulso.service;

import java.io.BufferedReader;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.hanulso.domain.CorVO;
import com.hanulso.domain.ProductVO;
import com.hanulso.domain.UserVO;
import com.hanulso.mapper.UserMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class UserServiceImpl implements UserService {
	
	@Setter(onMethod_=@Autowired)
	private UserMapper mapper;
	
	@Override
	public int user_check(String username) {
		return mapper.user_check(username);
	}
	
	@Override
	public void mailCheckUp(String username, String password) {
		mapper.mailCheckUp(username, password);
	}
	
	@Override
	public void mailCheckUpCor(String username, String password) {
		mapper.mailCheckUpCor(username, password);
	}

	// 일반 유저 회원가입
	@Override
	public void userRegister(UserVO uvo) {
		mapper.user_insert(uvo);
	}
	
	@Override
	public void userModify(UserVO uvo) {
		mapper.user_update(uvo);
	}
	
	@Override
	public void userCorModify(CorVO cvo) {
		mapper.user_cor_update(cvo);
	}
	
	@Override
	public void passwordModify(UserVO uvo) {
		mapper.passwordModify(uvo);
	}
	
	// 카카오 유저 회원가입
	@Override
	public void kakaoUserRegister(UserVO uvo) {
		mapper.kakao_user_insert(uvo);
	}
	
	// 중개사 회원 가입
	@Override
	public void corRegister(UserVO uvo, CorVO cvo) {
		mapper.cor_insert_1st(uvo);
		mapper.cor_insert_2nd(cvo);
	}
	
	@Override
	public void adminRegister(UserVO uvo) {
		mapper.admin_insert(uvo);
	}
	
	@Override
	public UserVO user_select(String username) {
		return mapper.user_select(username);
	}
	
	@Override
	public CorVO member_select(String username) {
		return mapper.member_select(username);
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
         sb.append("&redirect_uri=http://localhost:8123/user/kakaoLogin.do");     // redirect_uri
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
	
	@Override
	public HashMap<String, Object> getUserInfo(String access_Token) {

		// 요청하는 클라이언트마다 가진 정보가 다를 수 있기에 HashMap타입으로 선언
		HashMap<String, Object> userInfo = new HashMap<String, Object>();
		String reqURL = "https://kapi.kakao.com/v2/user/me";
		try {
			URL url = new URL(reqURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");

			// 요청에 필요한 Header에 포함될 내용
			conn.setRequestProperty("Authorization", "Bearer " + access_Token);

			int responseCode = conn.getResponseCode();
			System.out.println("responseCode : " + responseCode);

			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));

			String line = "";
			String result = "";

			while ((line = br.readLine()) != null) {
				result += line;
			}
			System.out.println("response body : " + result);

			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);
			System.out.println("element : " + element);
			
			JsonObject properties = element.getAsJsonObject().get("properties").getAsJsonObject();
			JsonObject kakao_account = element.getAsJsonObject().get("kakao_account").getAsJsonObject();

			String nickname = properties.getAsJsonObject().get("nickname").getAsString();
			String email = kakao_account.getAsJsonObject().get("email").getAsString();
			
			System.out.println("properties : " + properties);
			System.out.println("kakao_account : " + kakao_account);
			System.out.println("nickname : " + nickname);
			System.out.println("email : " + email);

			userInfo.put("nickname", nickname);
			userInfo.put("email", email);

		} catch (IOException e) {
			e.printStackTrace();
		}
		return userInfo;
	}
	
	@Override
	public void user_delete_user(String username) {
		mapper.user_delete_user(username);
	}
	
	@Override
	public void user_delete_favorite(String username) {
		mapper.user_delete_favorite(username);
	}
	
	@Override
	public void user_delete_alert(String username) {
		mapper.user_delete_alert(username);
	}
	
	@Override
	public void cor_delete(String username) {
		List<ProductVO> plist = mapper.cor_product_select(username);
		for(ProductVO pvo: plist) {
			mapper.cor_delete_alert(pvo);
			mapper.cor_delete_favorit(pvo);
		}
		mapper.cor_delete_product(username);
		mapper.cor_delete_cor(username);
		mapper.cor_delete_user(username);
	}
	
	

}
