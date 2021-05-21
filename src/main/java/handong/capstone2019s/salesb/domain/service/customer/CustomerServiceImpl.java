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

import java.util.Collections;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.terasoluna.gfw.common.exception.BusinessException;
import org.terasoluna.gfw.common.message.ResultMessages;

import com.github.dozermapper.core.Mapper;

import handong.capstone2019s.salesb.app.enterstore.CustomerEnterStoreForm;
import handong.capstone2019s.salesb.app.joinstorerequest.CustomerJoinStoreRequestForm;
import handong.capstone2019s.salesb.app.requesttoseller.CustomerRequestToSellerForm;
import handong.capstone2019s.salesb.app.showsellerlist.ShowSellerListForm;
import handong.capstone2019s.salesb.domain.model.Customer;
import handong.capstone2019s.salesb.domain.model.Seller;
import handong.capstone2019s.salesb.domain.model.SellerCustomer;
import handong.capstone2019s.salesb.domain.model.SellerProduct;
import handong.capstone2019s.salesb.domain.repository.customer.CustomerRepository;

@Transactional
@Service
public class CustomerServiceImpl implements CustomerService {
	@Inject
	CustomerRepository customerRepository;

	@Inject
	PasswordEncoder passwordEncoder;
	
	@Inject
	Mapper beanMapper;

	@Override
	public Customer register(Customer customer, String rawPassword) {

		String password = passwordEncoder.encode(rawPassword);

		customer.setCustomerPass(password);
		customerRepository.insert(customer);
		return customer;
	}
	
	@Override
	public Page<SellerProduct> showProduct(SellerProduct product, Pageable pageable) {
	     long total = customerRepository.countBySellerProduct(product);
	        List<SellerProduct> content;
	        if (0 < total) {
	            content = customerRepository.showSellerProduct(product,
	                    pageable);
	        } else {
	            content = Collections.emptyList();
	        }

	        Page<SellerProduct> page = new PageImpl<SellerProduct>(content, pageable, total);
	        return page;
	}
	
	@Override
	public void cancel(String productCode) throws BusinessException {
		SellerProduct product = findOne(productCode);

		if (product != null) {
			customerRepository.deleteById(productCode);
		} else {
			ResultMessages message = ResultMessages.error().add(handong.capstone2019s.salesb.app.common.constants.MessageId.E_TR_0003);
			throw new BusinessException(message);
		}
		/* log.debug("canceled productCode={}", productCode); */
	}

	@Override
	public Customer findByCode(String customerCode) {
		Customer customer = customerRepository.findById(customerCode).orElse(null);
		return customer;
	}

	@Override
	public CustomerRequestToSellerForm RequestToSeller(CustomerRequestToSellerForm request) {
		customerRepository.insertRequestToSeller(request);

		return request;
	}

	@Override
	public CustomerJoinStoreRequestForm JoinStoreRequest(CustomerJoinStoreRequestForm request) {
		customerRepository.insertJoinStoreRequest(request);
		return request;
	}

	@Override
	public Page<Seller> SelectEverySeller(ShowSellerListForm showsellerlistform, Pageable pageable) {
		long total = customerRepository.countEverySeller(showsellerlistform);
		
		List<Seller> content = customerRepository.selectEverySeller(showsellerlistform, pageable);

		Page<Seller> page = new PageImpl<Seller>(content, pageable, total);
		return page;
	}

	@Override
	public List<SellerCustomer> SelectSellerCustomer(String customerCode) {
		List<SellerCustomer> selcus = customerRepository.selectSellerCustomer(customerCode);

		return selcus;
	}
	
	@Override
	public SellerProduct findOne(String productCode) {
		return customerRepository.findByProductId(productCode).orElse(null);
	}
	
	@Override
	public CustomerEnterStoreForm update(SellerProductUpdateOutput output) throws BusinessException {
		 SellerProduct product = findOne(output.getProductCode());
		 
		 beanMapper.map(output, product); 

		 customerRepository.update(product);

		 CustomerEnterStoreForm input = new CustomerEnterStoreForm();
		  
		  input.setProductBodyStyle(product.getProductBodyStyle());
		  input.setProductColor(product.getProductColor());
		  input.setProductEngine(product.getProductEngine());
		  input.setProductFuel(product.getProductFuel());
		  input.setProductMake(product.getProductMake());
		  input.setProductMileage(product.getProductMileage());
		  input.setProductModel(product.getProductModel());
		  input.setProductMonth(product.getProductModel());
		  input.setProductPrice(product.getProductPrice());
		  input.setProductTransmission(input.getProductPrice());
		  input.setProductYear(product.getProductYear());
	
		 return input; 
	}
}
