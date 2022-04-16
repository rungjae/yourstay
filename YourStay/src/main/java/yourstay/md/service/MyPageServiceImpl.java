package yourstay.md.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yourstay.md.domain.Accommodation;
import yourstay.md.domain.WishListVO;
import yourstay.md.mapper.MyPageMapper;

@Service
public class MyPageServiceImpl implements MyPageService {
	@Autowired
	MyPageMapper myPageMapper;

	@Autowired
	SqlSession session;

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

}
