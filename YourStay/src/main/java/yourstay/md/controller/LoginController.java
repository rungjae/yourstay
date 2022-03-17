package yourstay.md.controller;

import javax.servlet.http.HttpServletRequest;
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
import yourstay.md.mapper.MemberMapper;

@Log4j
@AllArgsConstructor
@Controller
@RequestMapping("/login")
public class LoginController {
	
	@Autowired
	MemberMapper mapper;
	
	@GetMapping(value="/loginPage")
    public ModelAndView loginPage(ModelAndView mv){
        log.info("Logincontroller -> loginPage 로그인 시도 요청");
        mv.setViewName("login/loginPage");
        return mv;
    }
	@PostMapping("loginCheck.do")
    public ModelAndView loginCheck(@RequestParam String memail, String mpwd, HttpSession session, HttpServletRequest request){
        System.out.println(memail + "   " + mpwd);
		boolean result = mapper.login(memail, mpwd);
        ModelAndView mav = new ModelAndView();
        if (result == true) { // 로그인 성공
            // main.jsp로 이동
            mav.setViewName("room/roomRegister");
            mav.addObject("msg", "success");
            session.setAttribute("memail", memail);
            session.setAttribute("mpwd", mpwd);
        } else {    // 로그인 실패
            // login.jsp로 이동
            mav.setViewName("login");
            mav.addObject("msg", "failure");
            session.setAttribute("memail", null);
            session.setAttribute("mpwd", null);
        }
        
        return mav;
    }
	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		session.setAttribute("memail", null);
		session.setAttribute("mpwd", null);
		return "room/roomRegister";
	}
	@GetMapping(value="/joinPage")
    public ModelAndView requestJoin(ModelAndView mv){
        log.info("Logincontroller -> requestLogin 로그인 시도 요청");
        mv.setViewName("login/joinPage");
        return mv;
    }
	@RequestMapping("join.do")
	   public ModelAndView join(@RequestParam String mname, String memail, String mpwd, int mcallnum) {
   
	      MemberVO memberVo = mapper.getUser(memail);
	      ModelAndView mav = new ModelAndView();
	      if(memberVo == null)
	      {
	    	  mapper.addUser(new MemberVO(-1, mname, memail, mpwd , mcallnum, -1));
		      mav.setViewName("login/loginPage");
		      mav.addObject("msg","success");
		      System.out.println("ddd");
		      return mav;
	      }
	      else
	      {
	         mav.setViewName("login/joinPage");
	         mav.addObject("msg","fail");
	         System.out.println("cccc");
	         return mav;
	      }
	   }
}
