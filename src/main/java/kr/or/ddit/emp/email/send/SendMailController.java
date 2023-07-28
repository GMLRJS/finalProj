package kr.or.ddit.emp.email.send;

import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.util.ArticlePage;
import kr.or.ddit.vo.EmailVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/emp/mail/send")
@Controller
public class SendMailController {

	@Inject
	SendMailService emailService;

	// 메일
	@GetMapping("")
	public String mailInbox(Principal principal, Model model,
			@RequestParam(value = "size", required = false, defaultValue = "10") int size,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			@RequestParam(value = "cond", required = false, defaultValue = "") String cond,
			@RequestParam(value = "keyword", required = false, defaultValue = "") String keyword){
		log.info("mailInbox");
		String empId = principal.getName();
		String email =  empId.toLowerCase() + "@dorandoran.com";
		Map<String, String> map = new HashMap<>();

		map.put("size", String.valueOf(size));
		map.put("currentPage", String.valueOf(currentPage));
		map.put("cond", cond);
		map.put("keyword", keyword);
		map.put("email", email);


		List<EmailVO> data = this.emailService.selectEmailSendList(map);
		// 전체 글 수 구하기
		int total = this.emailService.sendTotal(email);
		log.info("mailInbox" + data);
		model.addAttribute("data", new ArticlePage<EmailVO>(total, currentPage, size, data));
		return "emp/emp_mail_send";
	}

}
