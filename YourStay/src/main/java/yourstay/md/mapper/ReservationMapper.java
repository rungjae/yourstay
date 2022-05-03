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
	
	public List<ReservationDateVO> selectAidReservationDate(long aid);
	/*
     * ȣ��Ʈ�� �˸���� checkView ã�� 
    */
   public Long checkView(long mseq);
   /*
     * �Խ�Ʈ�� �˸���� checkView ã��
    */
   public Long checkView2(long mseq);
   
   /*
     * rid�� Reservation ã�� 
    */
    public int findReservationRid(long rid);
    /*
     * mseq�� Reservation ã�� 
    */
    public List<Reservation> findReservationMseq(long mseq);
    /*
     * ȣ��Ʈ �˸� ������Ʈ �ϱ� ( Reservation UpdateRaccept )  
    */
    public int hostUpdate(long rid);
    /*
     * �Խ�Ʈ �˸� ������Ʈ �ϱ� ( Reservation UpdateRaccept )  
    */
    public int guestUpdate(Reservation reservation);
}