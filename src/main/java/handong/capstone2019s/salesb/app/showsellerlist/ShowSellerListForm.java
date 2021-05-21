package handong.capstone2019s.salesb.app.showsellerlist;

import java.io.Serializable;

import lombok.Data;

@Data
public class ShowSellerListForm implements Serializable {

	/**
	 * serialVersion.
	 */
	private static final long serialVersionUID = 1L;
	private String sellerName;
	private String sellerInformation;
	private String sellerImageUrl;
}
