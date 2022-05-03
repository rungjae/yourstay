package yourstay.md.service;

import java.util.List;

import yourstay.md.domain.Reservation;
import yourstay.md.domain.ReservationDateVO;

public interface ReservationService {
	/*
	 * �������̺� ���
	 */
	public void insertReservationS(Reservation reservationVO);
	/*
	 * ���೯¥���̺� ���
	 */
	public void insertReservationDateS(ReservationDateVO rdateVO);
	/*
	 * ���೯¥���̺� ��ȸ
	 */
	public List<ReservationDateVO> selectReservationDateS(Reservation reservationVO);
	
	public void ReservationDateS(Reservation reservationVO);
	public List<ReservationDateVO> selectAidReservationDateS(long aid);
	/*
     * ȣ��Ʈ �˶� ã�� 
    */
   public Long checkView(long mseq);
   /*
     * �Խ�Ʈ �˶� ã�� 
    */
   public Long checkView2(long mseq);
    /*
     * rid�� Reservation ã�� 
    */
    public int findReservationRidS(long rid);
    /*
     * mseq�� Reservation ã�� 
    */
    public List<Reservation> findReservationMseqS(long mseq);
    /*
     * �ش� ����� �������ִ� ��� ( Reservation UpdateRaccept )  
    */
    public int hostUpdateS(long rid);
    /*
     * �ش� ����� �������ִ� ��� ( Reservation UpdateRaccept )  
    */
    public int guestUpdateS(Reservation reservation);
}