package yourstay.md.mapper;

import java.util.List;

import yourstay.md.domain.Accommodation;
import yourstay.md.domain.WishListVO;

public interface MyPageMapper {
	/*
	 * ȸ���� �������̱�
	 */
	public List<WishListVO> getWishAid(long mseq);
	/*
	 * ȸ���� ���� ���ھ�ü ����Ʈ
	 */
	public List<Accommodation> getWishList(List<WishListVO> wishlist);
}
