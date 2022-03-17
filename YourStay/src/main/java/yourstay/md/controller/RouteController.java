package yourstay.md.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import yourstay.md.dao.interfaces.AccommodationDAO;
import yourstay.md.domain.Accommodation;

@Controller
public class RouteController {
	@Autowired
	AccommodationDAO adao;
//	@Autowired
//	private Accommodation accommodation;
	
	@RequestMapping(value = "searchInListFromMainGet.do", method=RequestMethod.GET )
	   public ModelAndView searchGetFromMain(@RequestParam String city,@RequestParam String startDate,@RequestParam String endDate,@RequestParam String person) {
	      System.out.println(city+" "+startDate+" "+endDate+" "+person);
	      int p = Integer.parseInt(person);
	      
	      List<Accommodation>acvo = adao.getAccommodationListBySearchBar(city, startDate, endDate, p);
	      System.out.println(acvo.size());
	      System.out.println(acvo.toString());      
	      ModelAndView mv = new ModelAndView();
	      mv.setViewName("searchList");
	      mv.addObject("voSize", acvo.size());   
	      mv.addObject("city", city);
	      mv.addObject("startDate", startDate);
	      mv.addObject("endDate", endDate);
	      mv.addObject("person", person);
	      mv.addObject("acvo",acvo);
	      
	      
	      return mv;
	   }
}
