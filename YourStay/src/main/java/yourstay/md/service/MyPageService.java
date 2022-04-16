package yourstay.md.service;

import java.util.List;
import java.util.Map;

import yourstay.md.domain.Accommodation;
import yourstay.md.domain.WishListVO;

public interface MyPageService {
	/*
	 * ȸ���� �������̱�
	 */
	public List<WishListVO> getWishAidS(long mseq);
	/*
	 * ȸ���� ���� ���ھ�ü ����Ʈ
	 */
	public List<Accommodation> getWishListS(List<WishListVO> wishlist);
	/*
	 * 
	 */
	Map<String, List> getWishS(long mseq);
}
