package com.shop.actions;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.shop.forms.ProductForm;
import com.shop.services.ProductTable;

public class ProductAction extends Action {
	ProductTable pt;
	
	public ActionForward getProducts(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ArrayList<ProductForm> prod = new ArrayList<ProductForm>();
		 pt = new ProductTable();
		prod= (ArrayList<ProductForm>) pt.getproducts();
		
		return super.execute(mapping, form, request, response);
	}

}
