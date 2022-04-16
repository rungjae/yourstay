package yourstay.md.mapper;

import java.util.List;
import java.util.Map;

import yourstay.md.domain.Accommodation;
import yourstay.md.domain.Image;
import yourstay.md.domain.MemberVO;
import yourstay.md.domain.roomRegisterVO;

public interface AccommodationMapper {

   /*
    * ���� ���̺� ���
    */
   public void insertAccom(roomRegisterVO roomregisterVo);
   
   public void insertOption(roomRegisterVO roomregisterVo);
   public void insertUtil(roomRegisterVO roomregisterVo);
   /*
    * �̹��� ���̺� ���
    */
   public void insertFile(Map<String, Object> map) throws Exception;
   /*
    * ���� ���̺� ����
    */
   public void updateAccom(roomRegisterVO roomregisterVo);
   
   
   public void updateOption(roomRegisterVO roomregisterVo);
   public void updateUtil(roomRegisterVO roomregisterVo);
   public void updateFile(Map<String, Object> map) throws Exception;

   public void requestDelete(long aid);
   /*
    * ����ϴ� ȸ����ȣ ��������
    */
   public MemberVO getRegisterMemberSeq(long mseq);
   /*
    * �����̹��� �ҷ�����
    */
   public List<Image> selectRoomImage(long aid);
}