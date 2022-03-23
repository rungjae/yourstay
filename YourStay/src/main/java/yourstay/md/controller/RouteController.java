package yourstay.md.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.log4j.Log4j;
import yourstay.md.domain.Accommodation;
import yourstay.md.domain.resultVO;
import yourstay.md.mapper.SearchMapper;
@Log4j
@Controller
public class RouteController {
//	@Autowired
//	AccommodationDAO adao;
	@Autowired
	SearchMapper mapper;
//	@Autowired
//	private Accommodation accommodation;
	@RequestMapping(value = "searchInList.do" )
	@ResponseBody
	public List<Accommodation> searchList(@RequestParam String aloc,@RequestParam String startdate,@RequestParam String deadline,@RequestParam String person) {
		System.out.println(aloc+" "+startdate+" "+deadline+" "+person);
		int p = Integer.parseInt(person);
		
		List<Accommodation>acvo = mapper.getAccommodationListBySearchBar(aloc, startdate, deadline, p);
		log.info(acvo.size());
		log.info(acvo.toString());		
		return acvo;
	}
	
	@RequestMapping(value = "searchInListFromMainGet.do", method=RequestMethod.GET )
	   public ModelAndView searchGetFromMain(@RequestParam String aloc,@RequestParam String startdate,@RequestParam String deadline,@RequestParam String person) {
		log.info(aloc+" "+startdate+" "+deadline+" "+person);
	      int p = Integer.parseInt(person);
	      
	      List<Accommodation>acvo = mapper.getAccommodationListBySearchBar(aloc, startdate, deadline, p);
	      log.info(acvo.size());
	      log.info(acvo.toString());      
	      ModelAndView mv = new ModelAndView("searchList", "acvo", acvo);
	      mv.setViewName("searchList");
	      mv.addObject("voSize", acvo.size());   
	      mv.addObject("city", aloc);
	      mv.addObject("startDate", startdate);
	      mv.addObject("endDate", deadline);
	      mv.addObject("person", p);
	      mv.addObject("acvo",acvo);

	      return mv;
	   }
	@RequestMapping(value = "roomDetailInfo", method=RequestMethod.GET )
	public ModelAndView searchDetail(@RequestParam Integer aid, @RequestParam String rstart, @RequestParam String rend) {
		  log.info("RouteCon searchDetail //// Integer aid : "  + aid+ ", startDate : "+ rstart+", endDate : "+ rend);
	      
		  resultVO resVO = mapper.getAccommodationByAccommodationId(aid);
	      resVO.setRstart(rstart);//사용자선택 시작날짜 적용
	      resVO.setRend(rend);//사용자선택 끝날짜 적용
	      resVO.setAid(aid);
	      
	      log.info("resVO.getAid() : "  + resVO.getAid());
	      log.info(resVO.toString()); 
	      return new ModelAndView("info/info","resVO",resVO);
	}
}
