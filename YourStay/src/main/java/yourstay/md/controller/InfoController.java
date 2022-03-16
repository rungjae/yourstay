package yourstay.md.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import yourstay.md.controller.InfoController;
import yourstay.md.domain.Acommodation;
import yourstay.md.service.InfoService;

@Log4j
@AllArgsConstructor
@Controller
@RequestMapping("info")
public class InfoController {
	@Autowired
	private InfoService infoService;
	
	@GetMapping("/")
	public ModelAndView showInfo(long aid) {
		Acommodation acomm = infoService.selectAcommodation(aid);
		ModelAndView mv = new ModelAndView("", "acomm", acomm);
		return mv;
	}
	

}
