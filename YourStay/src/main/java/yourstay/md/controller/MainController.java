package yourstay.md.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.log4j.Log4j;
import yourstay.md.domain.Accommodation;
import yourstay.md.domain.MemberVO;
import yourstay.md.domain.Reservation;
import yourstay.md.service.ReservationService;
import yourstay.md.service.SearchService;

@Log4j
@Controller

/**
 * packageName : yourstay.md.controller
 * fileName : MainController
 * author : kosmo 3팀
 * date : Mar 14, 2022
 * description :
 * ===========================================================
 * DATE                  AUTHOR                  NOTE
 * -----------------------------------------------------------
 * Mar 14, 2022          kosmo 3팀             최초 생성
 */

public class MainController {
   @Autowired
   SearchService searchService;
   @Autowired
   ReservationService reservservice;
   
   @GetMapping("/")
   public ModelAndView index(HttpSession session) {
      List<Accommodation> vo = searchService.getAccommodationByLoc();
      ModelAndView mv = new ModelAndView();
      long rid = -1L;
      if(session.getAttribute("loginOkUser")!=null) {
         MemberVO mvo = (MemberVO)session.getAttribute("loginOkUser");
         List<Reservation> reservation = reservservice.findReservationMseqS(mvo.getMseq());
          rid = reservation.get(0).getRid();
         Long check = reservservice.checkView(mvo.getMseq()); // ȣ��Ʈ �˸�
         mv.addObject("check", check);
         Long check2 = reservservice.checkView2(mvo.getMseq()); // �Խ�Ʈ �˸�
        mv.addObject("check2", check2);
      }
      log.info("MainController index: "+vo);
      mv.addObject("rid", rid);
      mv.addObject("vo", vo);
      mv.setViewName("index");
      return mv;
   }

   @GetMapping("/Projectreview")
   public String review() {
      return "Projectreview";
   }
   @GetMapping("/chat")
   public ModelAndView chat(HttpSession session, ModelAndView mv) {
      MemberVO mvo =(MemberVO)session.getAttribute("loginOkUser");
      log.info("mvo:" + mvo);
      mv.setViewName("chat");
      return mv;
   }
   
}