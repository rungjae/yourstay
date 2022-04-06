package yourstay.md.mapper;

import java.util.List;

import yourstay.md.domain.Reservation;
import yourstay.md.domain.ReservationDateVO;

public interface ReservationMapper {
	/*
	 * 예약테이블 등록
	 */
	public Reservation insertReservation(Reservation reservationVO);
	/*
	 * 예약날짜테이블 등록
	 */
	public ReservationDateVO insertReservationDate(long rid, long aid, String rdate);
	/*
	 * 예약날짜테이블 조회
	 */
	public List<ReservationDateVO> selectReservationDate(long aid, String rstart, String rend);
}
