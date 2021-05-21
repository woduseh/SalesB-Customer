package handong.capstone2019s.salesb.app.joinstorerequest;

import javax.validation.constraints.Email;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class CustomerJoinStoreRequestForm {
	
	private int seq;
	
	private String ver;

	private String customerName;
	
	private String customerCode;

	private String thePersonInCharge;

    @Email
    @Pattern(regexp="[a-zA-Z0-9]+@[a-z]+.[a-z]+$")
    @Size(max = 30)
	private String customerMail;

	private String requestContents;

	private String addTime;

	private String updateTime;

	private String deleteTime;
}
