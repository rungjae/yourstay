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
	 * �������̺� ���
	 */
	@Override
	public void insertReservationS(Reservation reservationVO) {
		reservationMapper.insertReservation(reservationVO);
	}
	/*
	 * ���೯¥���̺� ���
	 */
	@Override
	public void insertReservationDateS(ReservationDateVO rdateVO) {
		reservationMapper.insertReservationDate(rdateVO);
	}
	/*
	 * ���೯¥���̺� ��ȸ
	 */
	@Override
	public List<ReservationDateVO> selectReservationDateS(Reservation reservationVO) {
		reservationMapper.selectReservationDate(reservationVO);
		return null;
	}
	@Override
	public void ReservationDateS(Reservation reservationVO) {
		ArrayList<String> selectDateList = (ArrayList<String>) DateMaker.getDateList(reservationVO.getRstart(), reservationVO.getRend());
		ArrayList<ReservationDateVO> checkList = (ArrayList<ReservationDateVO>) reservationMapper.selectReservationDate(reservationVO);
		ReservationDateVO rdateVO = new ReservationDateVO();
		if(checkList.size() != 0) { //����� �Է� ���� �������̺� ������
			log.error("����Ұ��մϴ�");
		}else {//����� �Է� ���� �������̺� ������
			log.error("���డ���մϴ�");
			reservationMapper.insertReservation(reservationVO);
			rdateVO.setAid(reservationVO.getAid());
			rdateVO.setRid(reservationVO.getRid());
			for(int i = 0; i<selectDateList.size(); i++) {
				rdateVO.setRdate(selectDateList.get(i));
				reservationMapper.insertReservationDate(rdateVO);
			}
		}
	}

	@Override
	   public List<ReservationDateVO> selectAidReservationDateS(long aid) {
	      return reservationMapper.selectAidReservationDate(aid);
	   }
	/*
     * ȣ��Ʈ �˶� ã�� 
    */
   @Override
   public Long checkView(long mseq) {
      return reservationMapper.checkView(mseq);
   }
   /*
     * �Խ�Ʈ �˶� ã�� 
    */
   @Override
   public Long checkView2(long mseq) {
      return reservationMapper.checkView2(mseq);
   }
   /*
     * rid�� Reservation ã�� 
     */
   @Override
   public int findReservationRidS(long rid) {
      log.error("ReservationServiceImpl findRacceptS ����");
      log.error("rid: "+ rid);
      return reservationMapper.findReservationRid(rid);
   }
   /*
     * mseq�� Reservation ã�� 
     */
   @Override
   public List<Reservation> findReservationMseqS(long mseq) {
      log.info("ReservationServiceImpl findRacceptS ����");
      return reservationMapper.findReservationMseq(mseq);
   }
   /*
    *�ش� ����� �������ִ� ��� ( Reservation UpdateRaccept )  
    */
   @Override
   public int hostUpdateS(long rid) {
      log.info("ReservationServiceImpl racceptUpdateS ����");
      int result = reservationMapper.hostUpdate(rid);
      if(result>0) {
         log.info("ReservationServiceImpl racceptUpdateS ����!!");
      }else {
         log.info("ReservationServiceImpl racceptUpdateS ����!!!!");
      }
      return result;
   }
   /*
    *�ش� ����� �������ִ� ��� ( Reservation UpdateRaccept )  
    */
   @Override
   public int guestUpdateS(Reservation reservation) {
      log.info("ReservationServiceImpl racceptUpdateS ����");
      int result = reservationMapper.guestUpdate(reservation);
      if(result>0) {
         log.info("ReservationServiceImpl racceptUpdateS ����!!");
      }else {
         log.info("ReservationServiceImpl racceptUpdateS ����!!!!");
      }
      return result;
   }
}