package yourstay.md.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j;
import yourstay.md.domain.resultVO;
@Log4j
@Service
public class PriceServiceImpl implements PriceService {
	/*
	 * �����ϼ� ���
	 */
	@Override
	public long daysCalc(String rstart, String rend) {
		Date format1;
		Date format2;
		long diffSec = 0;
		long diffDays = 0;
		try {
			format1 = new SimpleDateFormat("yyyy-MM-dd").parse(rstart);
			format2 = new SimpleDateFormat("yyyy-MM-dd").parse(rend);
			diffSec = (format1.getTime() - format2.getTime()) / 1000; //�� ����
			diffDays = -1*(diffSec / (24 * 60 * 60)); // ���ڼ� ����
		} catch (ParseException e) {
			log.info("searchDetail // ParseException : " + e);
		}
		log.info(diffDays + "�� ����");
		return diffDays;
	}
	/*
	 * �����ϼ��� ���� ���� �ݾ� ���
	 */
	@Override
	public long resultPrice(resultVO resVO, long diffDays) {
		long resultprice = diffDays * resVO.getAprice();
		log.info("���� �ݾ� : "+ resultprice + "��");
		return resultprice;
	}

}
