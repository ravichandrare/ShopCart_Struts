package com.shop.actions;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.shop.forms.LoginForm;
import com.shop.forms.ProductForm;
import com.shop.services.LoginValidation;
import com.shop.services.ProductTable;

public class LoginAction extends Action {

	private final static String SUCCESS = "success";
	private final static String FAILURE = "failure";
	ProductTable pt;
	ArrayList<ProductForm> products=new ArrayList<ProductForm>();

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		LoginForm login = (LoginForm) form;

		String username = login.getUserName();
		String password = login.getPassword();

		LoginValidation lv = new LoginValidation();
		boolean b = lv.authenticate(username, password);

		if (b) {
			pt=new ProductTable();
			products=(ArrayList)pt.getproducts();
			request.setAttribute("productlist", products);
			return mapping.findForward(SUCCESS);
		} else {
			return mapping.findForward(FAILURE);
		}

	}
}
