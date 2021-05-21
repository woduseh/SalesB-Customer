package handong.capstone2019s.salesb.domain.model;

import java.io.Serializable;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class WholeStoreInfo implements Serializable {

		private static final long serialVersionUID = -1963073905840141910L;
		
		private Seller seller;
		
		private SellerProduct sellerProduct;
}
