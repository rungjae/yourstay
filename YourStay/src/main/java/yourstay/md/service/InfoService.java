package yourstay.md.service;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import yourstay.md.domain.Accommodation;

public interface InfoService {
	Accommodation selectAccommodation(long aid);
}
