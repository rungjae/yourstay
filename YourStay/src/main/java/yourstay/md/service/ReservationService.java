package yourstay.md.service;

import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;

import yourstay.md.domain.Reservation;
import yourstay.md.domain.ReservationDateVO;

public interface ReservationService {
	/*
	 * 예약테이블 등록
	 */
	public Reservation insertReservationS(Reservation reservationVO);
	/*
	 * 예약날짜테이블 등록
	 */
	public ReservationDateVO insertReservationDateS(long rid, long aid, String rdate);
	/*
	 * 예약날짜테이블 조회
	 */
	public List<ReservationDateVO> selectReservationDateS(@RequestParam long aid, @RequestParam String rstart, @RequestParam  String rend);
	
	public List<ReservationDateVO> ReservationDateS(Reservation reservationVO);
}
