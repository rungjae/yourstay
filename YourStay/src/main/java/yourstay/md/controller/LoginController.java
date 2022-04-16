package yourstay.md.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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

	@PostMapping("loginCheck.do")
	private ModelAndView check(HttpServletRequest request, HttpServletResponse response,HttpSession session) throws ServletException, IOException {
//		log.info("loginCon check aid:" + aid + ", startDate : " + rstart + ", endDate : " + rend);
		String memail = request.getParameter("memail");
		String mpwd = request.getParameter("mpwd");
		ModelAndView mv = new ModelAndView();
		//��ȿ�� �˻�(Ŭ���̾�Ʈ�� View:js, ������ Controller:java)
		log.info("loginCon check //email: "+memail+", pwd: "+mpwd);
		int result = mapper.login(memail, mpwd);
		log.info("�α��� ���(3>����) : " + result);		
		
		if(result == YES_ID_PWD) { //�α��� ������
			log.info("�α��� ����");	
			MemberVO m = mapper.getUser(memail);
			session = request.getSession();
			mv.addObject("msg", "success");
			session.setAttribute("memail", m.getMemail());
			session.setAttribute("mseq", m.getMseq());
			session.setAttribute("loginOkUser", m);
			log.info("m: "+m);
		}
		mv = new ModelAndView("msg", "result", result);
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
	@PostMapping("join.do")
	public ModelAndView join(@RequestParam String mname, String memail, String mpwd, int mcallnum) {
   
	   MemberVO memberVo = mapper.getUser(memail);
	   ModelAndView mav = new ModelAndView();
	   if(memberVo == null)
	   {
	    mapper.addUser(new MemberVO(-1, mname, memail, mpwd , mcallnum, -1));
		   mav.setViewName("login/loginPage");
	      mav.addObject("msg","success");
	      log.info("ddd");
	      return mav;
      }
      else
      {
         mav.setViewName("login/joinPage");
         mav.addObject("msg","fail");
         log.info("cccc");
         return mav;
      }
   }

}
