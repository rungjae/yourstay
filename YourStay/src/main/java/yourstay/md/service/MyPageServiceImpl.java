package yourstay.md.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j;
import yourstay.md.domain.Accommodation;
import yourstay.md.domain.MemberVO;
import yourstay.md.domain.WishListVO;
import yourstay.md.domain.reviewVO;
import yourstay.md.mapper.MemberMapper;
import yourstay.md.mapper.MyPageMapper;

@Log4j
@Service
public class MyPageServiceImpl implements MyPageService {
	@Autowired
	MyPageMapper myPageMapper;

	@Autowired
	SqlSession session;
	
	@Autowired
	MemberMapper memberMapper;

	/*
	 * ȸ���� �������̱�
	 */
	@Override
	public List<WishListVO> getWishAidS(long mseq) {
		return session.selectList("yourstay.md.mapper.MyPageMapper.getWishAid", mseq);
	}

	/*
	 * ȸ���� ���� ���ھ�ü ����Ʈ
	 */
	@Override
	public List<Accommodation> getWishListS(List<WishListVO> wishlist) {
		return session.selectList("yourstay.md.mapper.MyPageMapper.getWishList", wishlist);
	}
	
	/*
	 * ȸ���� ���� ���ھ�ü ���
	 */
	@Override
	public int addWishListS(WishListVO wishListvo) {
		//int result = session.insert("yourstay.md.mapper.MyPageMapper.addWish", reviewvo);
		log.error("#########MyPageServiceImpl addWishListS: "+wishListvo);
		
		log.info("service  - addWishList �Ϸ�");
		int result = myPageMapper.addWishList(wishListvo);
		if(result>0) {
			log.info("MyPageService addWishListS ȸ����� ����");
		}else {
			log.info("MyPageService addWishListS ȸ����� ����");
		}
		return result;
	}
	@Override
	public Map<String, List> getWishS(long mseq) {
		Map<String, List> wishMap = new HashMap<String, List>();

		List<WishListVO> wishList = myPageMapper.getWishAid(mseq);
		if (wishList.size() == 0) {
			return null;
		}

		List<Accommodation> accommoList = myPageMapper.getWishList(wishList);

		wishMap.put("wishList", wishList);
		wishMap.put("accommoList", accommoList);

		return wishMap;
	}
	/*
	 * ȸ���� ������ �� ����Ʈ �Ѱ��� �����ϱ� ! 
	 */
	@Override
	public boolean findWishListS(WishListVO wishListvo) {
		log.info("MyPageServiceImpl findWishList ã�� ����! ");
		String result = myPageMapper.findWishList(wishListvo);
		return Boolean.parseBoolean(result);
	}
	/*
	* ȸ���� ���� List ã��(�����ϱ�)
	*/
	@Override
	public int deleteWishListS(WishListVO wishListvo) {
		log.info("MyPageServiceImpl deleteWishList �̵� ! ");
		int result = myPageMapper.deleteWishList(wishListvo);
		if(result>0) {
			log.info("MyPageServiceImpl deleteWishList ���� ����");
		}else{
			log.info("MyPageServiceImpl deleteWishList ���� ����");
		}
		return result;
	}
}
