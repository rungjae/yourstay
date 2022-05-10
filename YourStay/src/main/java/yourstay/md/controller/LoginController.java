package yourstay.md.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import yourstay.md.domain.MemberVO;
import yourstay.md.domain.resultVO;
import yourstay.md.mapper.MemberMapper;
import yourstay.md.mapper.SearchMapper;

import static yourstay.md.domain.LoginConst.*;



@Log4j
@AllArgsConstructor
@Controller
@RequestMapping("/login")

/**
 * packageName : yourstay.md.controller
 * fileName : LoginController
 * author : kosmo 3팀
 * date : Mar 14, 2022
 * description :
 * ===========================================================
 * DATE                  AUTHOR                  NOTE
 * -----------------------------------------------------------
 * Mar 14, 2022          kosmo 3팀             최초 생성
 */

public class LoginController {
	@Autowired
	MemberMapper mapper;
	@Autowired
	SearchMapper searchMapper;
	
	@GetMapping(value="/loginPage")
    public ModelAndView loginPage(ModelAndView mv){
        log.info("Logincontroller -> loginPage �α��� �õ� ��û");
        mv.setViewName("login/loginPage");
        return mv;
    }
	
	@GetMapping("logout.do")
	public String logout(HttpSession session) {
		log.info("�α׾ƿ� ���� nulló��");
//		session.setAttribute("memail", null);
//		session.setAttribute("mpwd", null);
		session.invalidate();
		return "redirect:/";
	}
	@GetMapping(value="/joinPage")
    public ModelAndView requestJoin(ModelAndView mv){
        log.info("Logincontroller -> requestLogin �α��� �õ� ��û");
        mv.setViewName("login/joinPage");
        return mv;
    }

}
