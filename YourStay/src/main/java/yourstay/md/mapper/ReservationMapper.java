package yourstay.md.mapper;

import java.util.List;

import yourstay.md.domain.Reservation;
import yourstay.md.domain.ReservationDateVO;

public interface ReservationMapper {
	/*
	 * �������̺� ���
	 */
	public void insertReservation(Reservation reservationVO);
	/*
	 * ���೯¥���̺� ���
	 */
	public void insertReservationDate(ReservationDateVO rdateVO);
	/*
	 * ���೯¥���̺� ��ȸ
	 */
	public List<ReservationDateVO> selectReservationDate(Reservation reservationVO);
	public Long checkView(long mseq);
}