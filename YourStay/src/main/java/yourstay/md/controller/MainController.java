package yourstay.md.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import yourstay.md.domain.MemberVO;
import yourstay.md.domain.Reservation;
import yourstay.md.service.ReservationService;

@Controller
public class MainController {
	@Autowired
	ReservationService reservservice;
   @RequestMapping("/")
   public ModelAndView index(HttpSession session) {
      ModelAndView mv = new ModelAndView();
      MemberVO mvo =(MemberVO)session.getAttribute("loginOkUser");
      if(mvo!=null) {
    	Long check =reservservice.checkView(mvo.getMseq());
      	mv.addObject("check", check);
      }
      mv.setViewName("index");
      return mv;
   }

   
//   @RequestMapping("/test")
//   public String index1() {
//      
//      return "roomsAdd";
//   }
   
}