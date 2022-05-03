package yourstay.md.service;

import java.util.List;
import java.util.Map;

import yourstay.md.domain.Accommodation;
import yourstay.md.domain.MemberVO;
import yourstay.md.domain.WishListVO;
import yourstay.md.domain.reviewVO;

public interface MyPageService {
	/*
	 * ȸ���� ������ ��ü List
	 */
	public List<WishListVO> getWishAidS(long mseq);
	/*
	 * ȸ���� ���� ���ھ�ü ����Ʈ
	 */
	public List<Accommodation> getWishListS(List<WishListVO> wishlist);
	/*
	 * ȸ���� ���� ���ھ�ü ��� ���
	 */
	public int addWishListS(WishListVO wishListvo);
	
	
	Map<String, List> getWishS(long mseq);
	/*
	* ȸ���� ���� List ã��(�����ϱ�)
	*/
	public boolean findWishListS(WishListVO wishListvo);
	/*
	* ȸ���� ���� List �����ϱ�
	*/
	public int deleteWishListS(WishListVO wishListvo);
	
}
