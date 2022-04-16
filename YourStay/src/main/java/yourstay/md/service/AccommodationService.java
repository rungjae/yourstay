package yourstay.md.service;

import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import yourstay.md.domain.Accommodation;
import yourstay.md.domain.Image;
import yourstay.md.domain.MemberVO;
import yourstay.md.domain.roomRegisterVO;

public interface AccommodationService {
   /*
    * ���� ���̺� ���
    */
   public void insertAccommodationS(roomRegisterVO roomregisterVo, MultipartHttpServletRequest mpRequest) throws Exception;
   /*
    * ���� ���̺� ����
    */
   public void updateAccommodationS(roomRegisterVO roomregisterVo, MultipartHttpServletRequest mpRequest) throws Exception;
   
   public void requestDelete(long aid);
   
   /*
    * �����̹��� ��������
    */
   public List<Image> selectRoomImageS(long aid);
   /*
    * ����ϴ� ȸ����ȣ ��������
    */
   public MemberVO getRegisterMemberSeqS(long seq);
}