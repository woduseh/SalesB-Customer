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
package handong.capstone2019s.salesb.app.managecustomer;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.terasoluna.gfw.web.token.transaction.TransactionTokenCheck;
import org.terasoluna.gfw.web.token.transaction.TransactionTokenType;

import com.github.dozermapper.core.Mapper;

import handong.capstone2019s.salesb.domain.model.Customer;
import handong.capstone2019s.salesb.domain.service.customer.CustomerService;
import lombok.extern.slf4j.Slf4j;

/**
 * Handle request of customer register.
 */
@Slf4j
@Controller
@RequestMapping(value = "customers")
@TransactionTokenCheck(value = "customers")
public class ManageCustomerController {

    @Inject
    CustomerService customerService;

    @Inject
    CustomerPassEqualsValidator passwordEqualsValidator;

//    @Inject
//    CustomerBirthdayValidator dateValidator;

    @Inject
    Mapper beanMapper;
//
//    @Value("${customer.initialBirthYear}")
//    Integer initialBirthYear;
//
//    @Value("${customer.initialBirthMonth}")
//    Integer initialBirthMonth;
//
//    @Value("${customer.initialBirthDay}")
//    Integer initialBirthDay;

    @InitBinder("customerForm")
    public void initBinder(WebDataBinder webDataBinder) {
        // add custom validators to default bean validations
        webDataBinder.addValidators(passwordEqualsValidator);
    }

    /**
     * pre-initialization of form backed bean
     * @return
     */
    @ModelAttribute
    public CustomerForm setUpCustomerForm() {
        CustomerForm form = new CustomerForm();
//        form.setCustomerBirthYear(initialBirthYear);
//        form.setCustomerBirthMonth(initialBirthMonth);
//        form.setCustomerBirthDay(initialBirthDay);
        log.debug("populate form {}", form);
        return form;
    }

    /**
     * pre-initialization of form backed bean
     * @return
     */
    @RequestMapping(value = "create", method = RequestMethod.GET, params = "form")
    public String createForm() {
        return "manageuser/customer/createCustomerForm";
    }

    /**
     * Return to main input screen
     * @return
     */
    @RequestMapping(value = "create", method = RequestMethod.POST, params = "redo")
    public String createRedo(CustomerForm form) {
        return "manageuser/customer/createCustomerForm";
    }

    /**
     * shows the confirmation screen before registering a new customer
     * @param form
     * @param result
     * @return
     */
    @TransactionTokenCheck(value = "create", type = TransactionTokenType.BEGIN)
    @RequestMapping(value = "create", method = RequestMethod.POST, params = "confirm")
    public String createConfirm(@Validated CustomerForm form,
            BindingResult result) {
        if (result.hasErrors()) {
            return createRedo(form);
        }
        return "manageuser/customer/createCustomerConfirm";
    }

    /**
     * registers a new customer
     * @param form
     * @param result
     * @param redirectAttr
     * @return
     */
    @TransactionTokenCheck(value = "create", type = TransactionTokenType.IN)
    @RequestMapping(value = "create", method = RequestMethod.POST)
    public String create(@Validated CustomerForm form, BindingResult result,
            RedirectAttributes redirectAttr) {
        if (result.hasErrors()) {
            return createRedo(form);
        }

        Customer customer = beanMapper.map(form, Customer.class);

        Customer registeredCustomer = customerService.register(customer, form
                .getCustomerPass());
        redirectAttr.addFlashAttribute(registeredCustomer);
        return "redirect:/customers/createCustomerComplete";
    }

    /**
     * Redirected to the result page after registering a customer
     * @return
     */
    @RequestMapping(value = "create", method = RequestMethod.GET, params = "complete")
    public String createComplete() {
        return "manageuser/customer/createCustomerComplete";
    }

}
