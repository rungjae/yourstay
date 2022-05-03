package yourstay.md.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.log4j.Log4j;
import yourstay.md.domain.Image;
import yourstay.md.domain.Reservation;
import yourstay.md.domain.resultVO;
import yourstay.md.mapper.SearchMapper;
import yourstay.md.service.AccommodationService;
import yourstay.md.service.ReservationService;

@Controller
@RequestMapping("/res")
@Log4j

/**
 * packageName : yourstay.md.controller
 * fileName : ReservationRestController
 * author : kosmo 3��
 * date : Mar 14, 2022
 * description :
 * ===========================================================
 * DATE                  AUTHOR                  NOTE
 * -----------------------------------------------------------
 * Mar 14, 2022          kosmo 3��             ���� ����
 */

public class ReservationRestController {
	@Autowired
	SearchMapper searchMapper;
	@Autowired
	AccommodationService accommodationService;
	@Autowired
	ReservationService reservservice;
	
	/**
     * ���� ���̺� ���� Ȯ�� �� ���� �Ϸ�/�ݷ� ó��  ( DTO �� ��û �޴� ��� )
     * @param Reservation reservationVO
     * @return ModelAndView
     */
	@PostMapping("/reservation.do")
	public String checkReservation(Reservation reservationVO) {
		log.info("[ReservationRestController -> checkReservation ���� ���̺� Ȯ�� ��û��]");
		log.info("ReservationController // checkReservation reservationVO :" + reservationVO);
		reservservice.ReservationDateS(reservationVO);
		return "redirect:/";
	}
	
	/**
     * ���� ��û ���� ���� Ȯ�� ó��  ( DTO �� ��û �޴� ��� )
     * @param rstart, rend, resultprice, days
     * @return ModelAndView
     */
	@PostMapping("/reservdetail")
	public ModelAndView reserdetailPage(@RequestParam Integer aid, @RequestParam String rstart, @RequestParam String rend, @RequestParam long resultprice, @RequestParam long days) {
		log.info("[ReservationRestController -> reserdetailPage ���� ��û ���� ���� Ȯ�� ��û��]");
		log.info("ReservationCon reserdetailPage //// Integer aid : "  + aid+ ", startDate : "+ rstart+", endDate : "+ rend);
		List<Image> roomImage = accommodationService.selectRoomImageS(aid); //�����̹���
		String ipath1 = roomImage.get(0).getStored_file_name(); 
		List<resultVO> rlist = searchMapper.getAccommodationByAccommodationId(aid);
		resultVO rVO = rlist.get(0);
		rVO.setIpath1(ipath1);
		rVO.setRstart(rstart);//����ڼ��� ���۳�¥ ����
		rVO.setRend(rend);//����ڼ��� ����¥ ����
		rVO.setDays(days);//�����ϼ� ����
		rVO.setResultprice(resultprice); //���� �ݾ� ����
		rVO.setAid(aid);
		
		
		log.info("reserdetailPage resultVO: " + rVO.toString());
		return new ModelAndView("/reserdetail/reservation","rdetail",rVO);
	}
	
	/**
     * ȣ��Ʈ ���� ���� ó��
     * @param long rid
     * @return ModelAndView
     */
    @PostMapping("/hostUpdate")
    public ModelAndView hostUpdate(ModelAndView mv, long rid) {
       log.info("[ReservationRestController -> hostUpdate ȣ��Ʈ ���� ���� -> �˸� ���]");
       reservservice.hostUpdateS(rid);
       mv.addObject("rid", rid);
       log.info("##ReservationRestController updateRaccept �Ϸ�!!!! ");
       mv.setViewName("redirect:/mypage/accessPage");
       return mv;
    }
    
    /**
     * �Խ�Ʈ ���� ���� ó��
     * @param long rid
     * @return ModelAndView
     */
    @PostMapping("/guestUpdate")
    public ModelAndView guestUpdate(ModelAndView mv, Reservation reservation) {
       log.info("[ReservationRestController -> guestUpdate �Խ�Ʈ -> �˸� ��� ]");
       log.info("reservation : "+ reservation);
       reservservice.guestUpdateS(reservation);
       mv.addObject("rid", reservation.getRid());
       log.info("##ReservationRestController guestUpdate �Ϸ�!!!! ");
       mv.setViewName("redirect: /mypage/accessPage");
       return mv;
    }
}