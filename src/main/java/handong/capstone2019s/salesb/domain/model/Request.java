package handong.capstone2019s.salesb.domain.model;

import java.io.Serializable;
import java.sql.Date;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Request implements Serializable {
	
	private static final long serialVersionUID = -4669656154489141698L;

	private Integer seq;
	
	private Integer ver;

	private String client; // to Seller

	private String thePersonInCharge; // seller

	private String requestName; //title

	private String requestContents; // contents

	private Date addTime;

	private Date updateTime;

	private Date deleteTime;

}
