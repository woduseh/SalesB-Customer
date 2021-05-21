package handong.capstone2019s.salesb.app.customer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/customer")
public class CustomerController {
	/** show the customer page
	 * @return
	 */
	
	@RequestMapping
	public String customerForm() {
		log.info("test view");
		return "customer/form";
	}
}
