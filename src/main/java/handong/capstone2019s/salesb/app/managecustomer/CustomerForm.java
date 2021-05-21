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

import java.io.Serializable;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import lombok.Data;

/**
 * Customer form object.
 */
@Data
public class CustomerForm implements Serializable {

    /**
     * serialVersion.
     */
    private static final long serialVersionUID = -2440173040819204374L;

    @NotEmpty
    @Size(max = 20)
    @Pattern(regexp = "^[a-zA-Z가-힣]+$")
    private String customerName;

    @Email
    @Pattern(regexp="[a-zA-Z0-9]+@[a-z]+.[a-z]+$")
    @Size(max = 30)
    private String customerMail;

    @NotEmpty
    @Pattern(regexp = "[0-9a-zA-Z]+")
    @Size(min = 4, max = 20)
    private String customerPass;

    @NotEmpty
    @Pattern(regexp = "[0-9a-zA-Z]+")
    @Size(min = 4, max = 20)
    private String customerPassConfirm;

    @Pattern(regexp = "[0-9-]+[0-9]+$")
    @Size(min = 10, max = 13)
    private String customerTel;



    @Override
    public String toString() {
        return "&customerName=" + customerName
                +"&customerMail=" + customerMail
                + "&customerPass=" + customerPass+ "&customerTel=" + customerTel;
    }

}
