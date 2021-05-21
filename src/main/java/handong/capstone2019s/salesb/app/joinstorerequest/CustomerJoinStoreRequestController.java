package handong.capstone2019s.salesb.app.joinstorerequest;

import javax.inject.Inject;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.terasoluna.gfw.web.token.transaction.TransactionTokenCheck;
import org.terasoluna.gfw.web.token.transaction.TransactionTokenType;

import com.github.dozermapper.core.Mapper;

import handong.capstone2019s.salesb.domain.model.Customer;
import handong.capstone2019s.salesb.domain.model.Request;
import handong.capstone2019s.salesb.domain.service.customer.CustomerService;
import lombok.extern.slf4j.Slf4j;

/*
 * 소비자가 가입하지 않은 가상 스토어에 가입을 요청하는 페이지입니다.
 */

@Slf4j
@Controller
@RequestMapping(value = "/joinstorerequest")
@SessionAttributes(types = Request.class)
public class CustomerJoinStoreRequestController {
	@Inject
	CustomerService customerService;

	@Inject
	Mapper beanMapper;

	/**
	 * @return
	 */
	@ModelAttribute
	public CustomerJoinStoreRequestForm setUpCustomerJoinStoreRequestForm() {
		CustomerJoinStoreRequestForm form = new CustomerJoinStoreRequestForm();
		log.debug("populate form {}", form);
		return form;
	}

	/**
	 * @return
	 */
	@RequestMapping(value = "create/{sellerName}", method = RequestMethod.GET, params = "form")
	public String createForm(@PathVariable("sellerName") String thePersonInCharge) {
		return "request/createJoinStoreRequestForm";
	}

	/**
	 * @return
	 */
	@RequestMapping(value = "create/{sellerName}", method = RequestMethod.POST, params = "redo")
	public String createRedo(CustomerJoinStoreRequestForm form, @PathVariable("sellerName") String thePersonInCharge) {
		return "request/createJoinStoreRequestForm";
	}

	/**
	 * @param form
	 * @param result
	 * @return
	 */
	@TransactionTokenCheck(value = "create", type = TransactionTokenType.BEGIN)
	@RequestMapping(value = "create/{sellerName}", method = RequestMethod.POST, params = "confirm")
	public String createConfirm(@Validated CustomerJoinStoreRequestForm form,
			@PathVariable("sellerName") String thePersonInCharge, BindingResult result) {
		if (result.hasErrors()) {
			return createRedo(form, thePersonInCharge);
		}
		return "request/createJoinStoreRequestConfirm";
	}

	/**
	 * @param form
	 * @param result
	 * @param redirectAttr
	 * @return
	 */
	@TransactionTokenCheck(value = "create", type = TransactionTokenType.IN)
	@RequestMapping(value = "create/{sellerName}", method = RequestMethod.POST)
	public String create(Authentication authentication, @Validated CustomerJoinStoreRequestForm form,
			@PathVariable("sellerName") String thePersonInCharge, BindingResult result,
			RedirectAttributes redirectAttr) {

		String customerCode = authentication.getName();

		Customer customer = customerService.findByCode(customerCode);
		form.setThePersonInCharge(thePersonInCharge);
		
		form.setRequestContents("귀사의 스토어에 가입을 요청합니다.");
		
		form.setCustomerName(customer.getCustomerName());
		
		form.setCustomerCode(customer.getCustomerCode());

		if (result.hasErrors()) {
			return createRedo(form, thePersonInCharge);
		}

		CustomerJoinStoreRequestForm request = beanMapper.map(form, CustomerJoinStoreRequestForm.class);

		CustomerJoinStoreRequestForm registeredRequest = customerService.JoinStoreRequest(request);

		redirectAttr.addFlashAttribute(registeredRequest);

		return "redirect:/requestToSeller/create?complete";
	}

	/**
	 * Redirected to the result page after registering a customer
	 * 
	 * @return
	 */
	@RequestMapping(value = "create", method = RequestMethod.GET, params = "complete")
	public String createComplete() {
		return "request/createJoinStoreRequestComplete";
	}

}