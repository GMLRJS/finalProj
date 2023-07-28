package kr.or.ddit.mem.main;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.emp.main.EmpMainService;
import kr.or.ddit.vo.AtrzDocVO;
import kr.or.ddit.vo.MemberVO;
import kr.or.ddit.vo.PicnicRecomVO;
import kr.or.ddit.vo.SmsVO;
import kr.or.ddit.vo.UserVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/mem")
@Controller
public class MemMainController {

	@Inject
	MemMainService memMainService;
	@Inject
	EmpMainService empMainService;

	// 입주민 메인페이지
	@GetMapping("/main")
	public String memMain(Model model, Principal principal) {
		log.info("memMain : 입주민 메인페이지");
		List<AtrzDocVO> atrzDocVOList = null;
		if (principal != null) {
			String empId = principal.getName();
			// 결재문서 목록
			atrzDocVOList = this.empMainService.mainAtrzList(empId);
		}
		model.addAttribute("atrzDocVOList", atrzDocVOList);

		return "mem/mem_main";
	}

	// 아이디/패스워드 찾기 페이지
	@GetMapping("/findIdPw")
	public String findIdPw() {
		log.info("findId : 입주민 아이디/비밀번호 찾기 페이지");
		return "mem/mem_main_findIdPw";
	}

	// 아이디 찾기
	@ResponseBody
	@PostMapping("/findId")
	public String findId(@RequestBody UserVO userVO) {
		log.info("findId : 아이디 찾기");

		String userId = this.memMainService.findId(userVO);
		if(userId != null) {
			return userId;
		} else {
		    return "0";
		}
	}

	// 비밀번호 찾기
	@ResponseBody
	@PostMapping("/findPassword")
	public String findPassword(@RequestBody UserVO userVO) {
		log.info("findPassword : 패스워드 찾기");

		return this.memMainService.findPassword(userVO);
	}

	// 비밀번호 찾기 후 비밀번호 변경
	@ResponseBody
	@PostMapping("/changePassword")
	public int findPasswordPost(@RequestBody UserVO userVO) {
		log.info("changePassword : 패스워드 변경");

		return this.memMainService.changePassword(userVO);
	}

	// 입주민 회원가입 페이지
	@GetMapping("/signUp")
	public String memSignUp() {
		log.info("memSignUp : 입주민 회원가입 페이지");

		return "mem/mem_main_signup";
	}

	// 입주민 회원가입 Post
	@PostMapping("/signUpPost")
	public String memSignUpPost(@ModelAttribute MemberVO memberVO) {

		log.debug("memberVO : {}", memberVO);
		int cnt = this.memMainService.signUpMember(memberVO);

		if(cnt >= 1) {
			return "redirect:/mem/signUpSuccess";
		} else {
		    return "redirect:/mem/signUpFail";
		}
	}

	// 입주민 회원가입 아이디 중복확인
	@ResponseBody
	@GetMapping("/memCheckId")
	public int memCheckId(@RequestParam String memId) {
		log.info("memCheckId : 입주민 회원가입 아이디 중복체크");

		int cnt = this.memMainService.checkMemId(memId);
		log.info("cnt : " + cnt);

		return cnt;
	}

	// 문자인증
	@RequestMapping(value = "/phoneCheck", method = RequestMethod.GET)
	@ResponseBody
	public String phoneCheck(@RequestParam("phone") String phoneNumber) { // 휴대폰 문자보내기
		log.info("phoneCheck : 핸드폰인증 체크");
		int ranNum = (int)((Math.random()* (9999 - 1000 + 1)) + 1000);//난수 생성

		memMainService.certifiedPhoneNumber(phoneNumber,ranNum);

		return Integer.toString(ranNum);
	}

	// 입주민 회원가입 성공 페이지
	@GetMapping("/signUpSuccess")
	public String memSignUpSuccess() {
		log.info("memSignUpSuccess : 입주민 회원가입 성공 페이지");

		return "mem/mem_main_signup_success";
	}

	// 입주민 회원가입 실패 페이지
	@GetMapping("/signUpFail")
	public String memSignUpFail() {
		log.info("memSignUpFail : 입주민 회원가입 실패 페이지");

		return "mem/mem_main_signup_fail";
	}

	// 얼굴인식 로그인 페이지
	@GetMapping("/facelogin")
	public String faceLogin() {
		log.info("faceLogin : 입주민 얼굴인식 로그인 페이지");
		return "mem/mem_main_facelogin";
	}

	// 입주민 나들이장소 추천 페이지
	@ResponseBody
	@PostMapping("/picnicRecom")
	public List<Map<String,Object>> detailPicnic(@RequestBody PicnicRecomVO picnicRecomVO){
		log.info("picnicRecomVO : " + picnicRecomVO);

		List<Map<String,Object>> data = this.memMainService.detailPicnic(picnicRecomVO);
		log.info("data : " + data);

		return data;
	}


	// 아파트 소개 - 단지정보
	@GetMapping("/intro/aptinfo")
	public String aptInfo() {
		log.info("aptInfo");
		return "mem/mem_intro_aptinfo";
	}

	// 아파트 소개 - 평형정보
	@GetMapping("/intro/hpprinfo")
	public String HouseSupplyAreaInfo() {
		log.info("supplyAreaInfo");
		return "mem/mem_intro_house_supply_area_info";
	}

	// 아파트 소개 - 관리사무소
	@GetMapping("/intro/officeinfo")
	public String officeInfo() {
		log.info("officeinfo");
		return "mem/mem_intro_office_info";
	}

	// 아파트 소개 - 부동산정보
	@GetMapping("/intro/estateinfo")
	public String estateInfo() {
		log.info("estateInfo");
		return "mem/mem_intro_estate_info";
	}

	// 생활편의서비스 - 헬스장
	@GetMapping("/life/gym")
	public String gym() {
		log.info("gym");
		return "mem/mem_life_gym";
	}

	// 생활편의서비스 - 수영장
	@GetMapping("/life/pool")
	public String pool() {
		log.info("pool");
		return "mem/mem_life_pool";
	}

	// 생활편의서비스 - 스크린골프장
	@GetMapping("/life/glfpr")
	public String golfPracticeRange() {
		log.info("golfPracticeRange");
		return "mem/mem_life_golf_practive_range";
	}


	@ResponseBody
	@PostMapping("/onlineUserDetail")
	public List<MemberVO> onlineUserDetail(@RequestBody String data) {

		log.info("onlineUserDetail ===" + data);

		data = data.replaceAll("=", "");
		data = data.replaceAll("\"", "");
		String[] users = data.split(",");

		List<MemberVO> onlineMemberVOList = new ArrayList<>();
		for (int i = 0; i< users.length; i++) {
			String user = users[i].trim();
			log.info("onlineMemberVOList"+user);
			MemberVO memberVO = new MemberVO();
			memberVO.setMemId(user);
			memberVO = this.memMainService.detailMember(memberVO);
			onlineMemberVOList.add(memberVO);
		}
		log.info("onlineUserDetail onlineMemberVOList"+onlineMemberVOList);

		return onlineMemberVOList;
	}

	@ResponseBody
	@PostMapping("/selectMyChat")
	public List<SmsVO> selectMyChat(@RequestBody SmsVO smsVO){
		log.info("selectMyChat"+smsVO);
		return this.memMainService.selectMyChat(smsVO);
	}


}














