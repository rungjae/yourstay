package yourstay.md.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.log4j.Log4j;
import lombok.extern.slf4j.Slf4j;
import yourstay.md.domain.Reservation;
import yourstay.md.domain.ReservationDateVO;
import yourstay.md.mapper.ReservationMapper;
import yourstay.md.util.DateMaker;
@Service
@Slf4j
public class ReservationServiceImpl implements ReservationService {
	@Autowired
	ReservationMapper reservationMapper;
	/*
	 * 예약테이블 등록
	 */
	@Override
	public Reservation insertReservationS(Reservation reservationVO) {
		return reservationMapper.insertReservation(reservationVO);
	}
	/*
	 * 예약날짜테이블 등록
	 */
	@Override
	public ReservationDateVO insertReservationDateS(long rid, long aid, String rdate) {
		return reservationMapper.insertReservationDate(rid, aid, rdate);
	}
	/*
	 * 예약날짜테이블 조회
	 */
	@Override
	public List<ReservationDateVO> selectReservationDateS(long aid, String rstart, String rend) {
		reservationMapper.selectReservationDate(aid, rstart, rend);
		return null;
	}
	@Override
	public List<ReservationDateVO> ReservationDateS(Reservation reservationVO) {
		ArrayList<String> selectDateList = (ArrayList<String>) DateMaker.getDateList(reservationVO.getRstart(), reservationVO.getRend());
		log.error("ReservationDateS// selectDateList.size() : " + selectDateList.size());
		log.error("ReservationDateS// reservationVO : " + reservationVO);
		ArrayList<ReservationDateVO> checkList = (ArrayList<ReservationDateVO>) reservationMapper.selectReservationDate(reservationVO.getAid(), reservationVO.getRstart(), reservationVO.getRend());
		log.error("ReservationDateS// checkList.size() : " + checkList.size());
		
		if(checkList != null) { //사용자 입력 값이 예약테이블에 없으면
			log.error("예약불가합니다");
		}else {
			//예약가능
			log.error("예약가능합니다");
			reservationMapper.insertReservation(reservationVO);
			log.error("insertReservation완료");
			for(String stringdate : selectDateList) {
				log.error("insertReservationDate for문");
				reservationMapper.insertReservationDate(reservationVO.getRid(),reservationVO.getAid(), stringdate);
			}
		}
		return null;
	}

}
