package yourstay.md.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import yourstay.md.domain.Accommodation;
import yourstay.md.domain.Accomoption;
import yourstay.md.domain.Image;
import yourstay.md.domain.MemberVO;
import yourstay.md.mapper.MemberMapper;
import yourstay.md.service.AccommodationService;
import yourstay.md.service.MemberService;

@Log4j
@AllArgsConstructor
@Controller
@RequestMapping("/mypage")
public class MypageController {
	@Autowired
	private AccommodationService accommodationService;
	@Autowired
	private MemberMapper membermapper;
	
	@GetMapping(value="/home")
    public ModelAndView gohome(ModelAndView mv){
        log.info("MypageController -> gohome 요청");
        mv.setViewName("mypage/home");
        return mv;
    }
	@PostMapping("/register.do")
	public String roomRegister(ModelAndView mv, Accomoption aco, Accommodation ac, Image img, String memail) {
		log.info("roomOption Data -> info 전달");
		log.info("로그인한 회원의 메일: " + memail);
		MemberVO member = membermapper.getUser(memail);
		log.info("로그인한 회원의  메일: " + member.getMemail()+", 회원의 번호: "+ member.getMseq() +", 회원의 이름: "+member.getMname());
//		MemberVO member = accommodationService.getRegisterMemberSeqS(mseq);
//		accommodationService.insertImageS(img);// 이미지 테이블에 insert
//		ac.setMseq(member.getMseq());//insert할 회원번호 설정(숙소등록하는 회원번호)
//		accommodationService.insertAccommodationS(ac);// 숙소  테이블에 insert
//		accommodationService.insertAccomoptionS(aco); // 숙소옵션 테이블에 insert
//		log.info("옵션번호: "+ aco.getAid() +", 숙소번호 : "+aco.getOid()+", 방개수 : "+aco.getRnum()+", TV유무 : "+ aco.getTv());
		//여기에  info페이지로 값을 전달 
		return "redirect:home";
	}
	
	@GetMapping(value="/wishlist")
    public ModelAndView wishlist(ModelAndView mv){
        log.info("MypageController -> wishlist 요청");
        mv.setViewName("mypage/wishlist");
        return mv;
    }
	@GetMapping(value="/review")
    public ModelAndView checkBook(ModelAndView mv){
        log.info("MypageController -> checkBook 요청");
        mv.setViewName("mypage/review");
        return mv;
    }
}
