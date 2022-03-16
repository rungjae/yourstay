package yourstay.md.service;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import yourstay.md.mapper.InfoMapper;
import yourstay.md.domain.Acommodation;

@Service
@AllArgsConstructor
public class InforServiceImpl implements InfoService {
	private InfoMapper infoMapper;
	
	/*
	 * 숙소번호에 해당하는 숙소정보들을 저장
	 */
	@Override
	public Acommodation selectAcommodation(long aid) {
		Acommodation acomm = infoMapper.selectByaid(aid);
		return acomm;
	}

}
