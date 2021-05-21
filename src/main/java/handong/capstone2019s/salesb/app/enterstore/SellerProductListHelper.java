package handong.capstone2019s.salesb.app.enterstore;

import javax.inject.Inject;

import org.springframework.stereotype.Component;

import handong.capstone2019s.salesb.domain.model.SellerProduct;
import handong.capstone2019s.salesb.domain.service.customer.CustomerService;
@Component
public class SellerProductListHelper {
    @Inject
    CustomerService customerService;

    public CustomerEnterStoreForm findDetail(String productCode) {
        SellerProduct product = customerService.findOne(productCode);

        CustomerEnterStoreForm form = new CustomerEnterStoreForm();

        form.setProductBodyStyle(product.getProductBodyStyle());
        form.setProductCode(product.getProductCode());
        form.setProductColor(product.getProductColor());
        form.setProductEngine(product.getProductEngine());
        form.setProductFuel(product.getProductFuel());
        form.setProductMake(product.getProductMake());
        form.setProductMileage(product.getProductMileage());
        form.setProductModel(product.getProductModel());
        form.setProductMonth(product.getProductMonth());
        form.setProductPrice(product.getProductPrice());
        form.setProductTransmission(product.getProductTransmission());
        form.setProductYear(product.getProductYear());
        form.setProductImageUrl(product.getProductImageUrl());

        return form;

    }



}
