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
package handong.capstone2019s.salesb.domain.repository.customer;

import java.util.List;
import java.util.HashMap;
import java.util.Optional;

import org.apache.ibatis.annotations.Param;
import org.springframework.data.domain.Pageable;

import handong.capstone2019s.salesb.app.joinstorerequest.CustomerJoinStoreRequestForm;
import handong.capstone2019s.salesb.app.requesttoseller.CustomerRequestToSellerForm;
import handong.capstone2019s.salesb.app.showsellerlist.ShowSellerListForm;
import handong.capstone2019s.salesb.domain.model.Customer;
import handong.capstone2019s.salesb.domain.model.Seller;
import handong.capstone2019s.salesb.domain.model.SellerCustomer;
import handong.capstone2019s.salesb.domain.model.SellerProduct;

public interface CustomerRepository {

	Optional<Customer> findById(String customerCode);

	Optional<Customer> findByCustomerId(String customerCode);
	
    Optional<SellerProduct> findByProductId(String productCode);

	void insertRequestToSeller(CustomerRequestToSellerForm request);

	void insertJoinStoreRequest(CustomerJoinStoreRequestForm request);
	
	void update(SellerProduct product);
	
	void deleteById(String productCode);

	void insert(Customer customer);

	long countEverySeller (@Param("showsellerlistform") ShowSellerListForm showsellerlistform);
	
	long countBySellerProduct(
            @Param("product") SellerProduct product);
	
	List<SellerProduct> showSellerProduct(
            @Param("product") SellerProduct product,
            @Param("pageable") Pageable pageable);
	
	List<Seller> selectEverySeller(@Param("showsellerlistform") ShowSellerListForm showsellerlistform, Pageable pageable);
	
	List<SellerCustomer> selectSellerCustomer(String customerCode);

	List<Seller> selectSellerbySellerCode(@Param("sellercode") int sellercode, Pageable pageable);
}
