package yourstay.md.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import yourstay.md.domain.Accommodation;
import yourstay.md.domain.WishListVO;
import yourstay.md.domain.reviewVO;

//@Mapper
public interface MyPageMapper {
	/*
	 * ȸ���� �������̱�
	 */
	public List<WishListVO> getWishAid(long mseq);
	/*
	 * ȸ���� ���� ���ھ�ü ����Ʈ
	 */
	public List<Accommodation> getWishList(List<WishListVO> wishlist);
	/*
	 * ȸ���� ���� ���ھ�ü ���
	 */
	public int addWishList(WishListVO wishListvo);
	/*
	 * ȸ���� ���� ���ھ�ü ��ϵǾ����� ����! 
	 */
	public String findWishList(WishListVO wishListvo);
	/*
	 * ȸ���� ���� ���ھ�ü ����
	 */
	public int deleteWishList(WishListVO wishListvo);
}
