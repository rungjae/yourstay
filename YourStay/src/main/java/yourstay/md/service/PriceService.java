package yourstay.md.service;

import yourstay.md.domain.resultVO;

public interface PriceService {
	/*
	 * �����ϼ� ���
	 */
	public long daysCalc(String rstart, String rend);
	/*
	 * �����ϼ��� ���� ���� �ݾ� ���
	 */
	public long resultPrice(resultVO resVO, long diffDays);
}
