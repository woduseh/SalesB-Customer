/*
 * Copyright(c) 2013 NTT DATA Corporation.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
 * either express or implied. See the License for the specific language
 * governing permissions and limitations under the License.
 */
package handong.capstone2019s.salesb.domain.service.customer;

import java.util.HashMap;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.terasoluna.gfw.common.exception.BusinessException;

import handong.capstone2019s.salesb.app.enterstore.CustomerEnterStoreForm;
import handong.capstone2019s.salesb.app.joinstorerequest.CustomerJoinStoreRequestForm;
import handong.capstone2019s.salesb.app.requesttoseller.CustomerRequestToSellerForm;
import handong.capstone2019s.salesb.app.showsellerlist.ShowSellerListForm;
import handong.capstone2019s.salesb.domain.model.Customer;
import handong.capstone2019s.salesb.domain.model.Seller;
import handong.capstone2019s.salesb.domain.model.SellerCustomer;
import handong.capstone2019s.salesb.domain.model.SellerProduct;

public interface CustomerService {
	Customer register(Customer customer, String rawPassword);
	
	SellerProduct findOne(String productCode);

	Customer findByCode(String customerCode);
	
    Page<SellerProduct> showProduct(SellerProduct product,
            Pageable pageable);
	
	List<SellerCustomer> SelectSellerCustomer(String customerCode);

	CustomerRequestToSellerForm RequestToSeller(CustomerRequestToSellerForm request);

	CustomerJoinStoreRequestForm JoinStoreRequest(CustomerJoinStoreRequestForm request);
	
	CustomerEnterStoreForm update(
    		SellerProductUpdateOutput input) throws BusinessException;
	
	Page<Seller> SelectEverySeller(ShowSellerListForm showsellerlistform, Pageable pageable);
	
	void cancel(String productCode) throws BusinessException;
}
