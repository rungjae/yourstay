package yourstay.md.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import lombok.extern.log4j.Log4j;
import yourstay.md.domain.Accommodation;
import yourstay.md.domain.MemberVO;
import yourstay.md.domain.roomRegisterVO;
import yourstay.md.fileset.RoomFileUtils;
import yourstay.md.mapper.AccommodationMapper;
@Log4j
@Service
public class AccommodationServiceImpl implements AccommodationService {
   @Autowired
   private AccommodationMapper accommodationMapper;
   
   @Resource(name="roomFileUtils")
   private RoomFileUtils roomfileUtils;
   
   /*
    * 숙소 테이블에 등록
    */
   @Override
   public void insertAccommodationS(roomRegisterVO roomregisterVo, MultipartHttpServletRequest mpRequest) throws Exception {
	   accommodationMapper.insertAccom(roomregisterVo);
	   accommodationMapper.insertOption(roomregisterVo);
	   accommodationMapper.insertUtil(roomregisterVo);
      
      List<Map<String,Object>> list = roomfileUtils.parseInsertFileInfo(roomregisterVo, mpRequest); 
      log.info("list: "+list);
      int size = list.size();
      for(int i=0; i<size; i++){ 
         accommodationMapper.insertFile(list.get(i)); 
         log.info("list: "+list);
      }
      
   }
   


   /*
    * 등록하는 회원번호 가져오기
    */
   @Override
   public MemberVO getRegisterMemberSeqS(long mseq) {
      return accommodationMapper.getRegisterMemberSeq(mseq);
   }



}