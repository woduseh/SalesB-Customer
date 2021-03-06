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
package handong.capstone2019s.salesb.domain.service.authority;

import javax.inject.Inject;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import handong.capstone2019s.salesb.domain.model.Admin;
import handong.capstone2019s.salesb.domain.model.Customer;
import handong.capstone2019s.salesb.domain.model.Seller;
import handong.capstone2019s.salesb.domain.repository.customer.CustomerRepository;
/*
 * authentication code
 * 1: ADMIN
 * 2: SELLER
 * 3: USER (BUYER)
 * */
public class AuthorityUserDetailsService implements UserDetailsService {
    @Inject
    CustomerRepository customerRepository;
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Customer customer = customerRepository.findById(username).orElse(null);
        if (customer == null) {
            throw new UsernameNotFoundException(username + " is not found.");
        }
        else {
        	return new AuthorityCustomerDetails(customer);
        }
    }
}