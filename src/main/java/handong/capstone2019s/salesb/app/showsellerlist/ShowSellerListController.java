package handong.capstone2019s.salesb.app.showsellerlist;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.validation.Valid;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.github.dozermapper.core.Mapper;

import handong.capstone2019s.salesb.domain.model.Seller;
import handong.capstone2019s.salesb.domain.model.SellerCustomer;
import handong.capstone2019s.salesb.domain.service.customer.CustomerService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class ShowSellerListController {

	
    @Inject
    CustomerService customerService;
    @Inject
    Mapper beanMapper;
    
	@RequestMapping(value = "showsellerlist")
	public String RequestList(Authentication authentication, @ModelAttribute @Valid ShowSellerListForm showSellerListForm,
			BindingResult result, Model model, @PageableDefault Pageable pageable) {

		log.info("initial view");

		if (result.hasErrors()) {
			return "customer/showSellerListForm";
		}

		if (log.isDebugEnabled()) {
			log.debug("pageable={}", pageable);
		}

		ShowSellerListForm criteria = beanMapper.map(showSellerListForm, ShowSellerListForm.class);

		Page<Seller> page = customerService.SelectEverySeller(criteria, pageable);
		model.addAttribute("page", page);
		
		List<SellerCustomer> selcus = customerService.SelectSellerCustomer(authentication.getName());

		model.addAttribute("sellercustomer", selcus);
		
		String customerCode = authentication.getName();
		
		model.addAttribute("customerCode", customerCode);
		
		return "customer/showSellerListForm";
	}

	@ModelAttribute("ShowSellerListForm")
	public ShowSellerListForm setUpSearchShowSellerListForm() {
		ShowSellerListForm showSellerListForm = new ShowSellerListForm();

		return showSellerListForm;
	}

	@RequestMapping(value = "showsellerlist", method = RequestMethod.GET)
	public String Search(Authentication authentication, @ModelAttribute @Valid ShowSellerListForm showSellerListForm,
			BindingResult result, Model model, @PageableDefault Pageable pageable) {

		log.info("initial view");

		if (result.hasErrors()) {
			return "customer/showSellerListForm";
		}

		if (log.isDebugEnabled()) {
			log.debug("pageable={}", pageable);
		}

		ShowSellerListForm criteria = beanMapper.map(showSellerListForm, ShowSellerListForm.class);

		Page<Seller> page = customerService.SelectEverySeller(criteria, pageable);
		model.addAttribute("page", page);
		
		List<SellerCustomer> selcus = customerService.SelectSellerCustomer(authentication.getName());

		model.addAttribute("sellercustomer", selcus);
		
		String customerCode = authentication.getName();
		
		model.addAttribute("customerCode", customerCode);

		int pageSize = page.getNumberOfElements();

		model.addAttribute("pageSize", pageSize);

		return "customer/showSellerListForm";
	}
}
