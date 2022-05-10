package yourstay.md.controller;

import static yourstay.md.domain.LoginConst.YES_ID_PWD;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import yourstay.md.domain.MemberVO;
import yourstay.md.mapper.MemberMapper;
import yourstay.md.mapper.SearchMapper;
import yourstay.md.service.MemberService;

@Log4j
@AllArgsConstructor
@Controller
@RequestMapping("/login")

/**
 * packageName : yourstay.md.controller
 * fileName : LoginRestController
 * author : kosmo 3팀
 * date : Mar 14, 2022
 * description :
 * ===========================================================
 * DATE                  AUTHOR                  NOTE
 * -----------------------------------------------------------
 * Mar 14, 2022          kosmo 3팀             최초 생성
 */

public class LoginRestController {
	@Autowired
	MemberMapper mapper;
	@Autowired
	MemberService memberService;
	@Autowired
	SearchMapper searchMapper;
	
    /**
     * 로그인 정보 확인 후 로그인 처리  ( DTO 로 요청 받는 경우 )
     * @return ModelAndView
     */
	@PostMapping("loginCheck.do")
	private ModelAndView check(HttpServletRequest request, HttpServletResponse response,HttpSession session) throws ServletException, IOException {
//		log.info("loginCon check aid:" + aid + ", startDate : " + rstart + ", endDate : " + rend);
		String memail = request.getParameter("memail");
		String mpwd = request.getParameter("mpwd");
		ModelAndView mv = new ModelAndView();
		//��ȿ�� �˻�(Ŭ���̾�Ʈ�� View:js, ������ Controller:java)
		log.info("loginCon check //email: "+memail+", pwd: "+mpwd);
		int result = memberService.login(memail, mpwd);
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
	
	/**
     * 회원가입 처리  ( mname, memail, mpwd, mcallnum 로 요청 받는 경우 )
     * @return ModelAndView
     */
	@PostMapping("join.do")
	public ModelAndView join(@RequestParam String mname, String memail, String mpwd, int mcallnum) {
   
	   MemberVO memberVo = mapper.getUser(memail);
	   ModelAndView mav = new ModelAndView();
	   if(memberVo == null)
	   {
	    mapper.addUser(new MemberVO(-1, mname, memail, mpwd , mcallnum,-1));
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
