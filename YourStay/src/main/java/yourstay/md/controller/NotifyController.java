package yourstay.md.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.log4j.Log4j;
@Log4j
@Controller
public class NotifyController {
	
	@RequestMapping(value = "notify.do")
	public ModelAndView notifyInit(@RequestParam(defaultValue = "1") int curPage, HttpServletRequest request) throws Exception {
		log.info("NotifyController // request : " + request);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("socket/notify");
		
		return mv;
	}

}
