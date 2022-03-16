package yourstay.md.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import yourstay.md.domain.Acommodation;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Acommodation {
	private long aid;
	private String aname;
	private String aloc;
	private long aprice;
	private long apoint;
	private String atype;
	private int apeople;
	private int iid;
	private long mseq;
}
