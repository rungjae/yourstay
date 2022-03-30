package yourstay.md.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import yourstay.md.domain.Accommodation;
import yourstay.md.domain.Image;
import yourstay.md.domain.MemberVO;
import yourstay.md.domain.roomRegisterVO;

public class AccommodationMapperImpl implements AccommodationMapper {
   
   @Autowired
   SqlSession session;
   
   @Override
   public void insertAccom(roomRegisterVO roomregisterVo) {
      session.insert("yourstay.md.mapper.AccommodationMapper.insertAccom",roomregisterVo);

   }
   
   @Override
   public void insertOption(roomRegisterVO roomregisterVo) {
      session.insert("yourstay.md.mapper.AccommodationMapper.insertOption",roomregisterVo);

   }
   
   @Override
   public void insertUtil(roomRegisterVO roomregisterVo) {
      session.insert("yourstay.md.mapper.AccommodationMapper.insertUtil",roomregisterVo);

   }

   @Override
   public void insertFile(Map<String, Object> map) throws Exception {
      session.insert("yourstay.md.mapper.AccommodationMapper.insertFile", map);

   }

   @Override
   public MemberVO getRegisterMemberSeq(long mseq) {
      // TODO Auto-generated method stub
      return null;
   }

	@Override
	public List<Image> selectRoomImage(long aid) {
		// TODO Auto-generated method stub
		return null;
	}


}