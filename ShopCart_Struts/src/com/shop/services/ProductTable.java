package com.shop.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.shop.forms.ProductForm;
import com.shop.dao.ConnectionUtil;

public class ProductTable {
	
	public List<ProductForm> getproducts() throws ClassNotFoundException, SQLException
	{
		
		Connection con = ConnectionUtil.getConnection();
		
		ArrayList<ProductForm> prod = new ArrayList<ProductForm>();
		PreparedStatement st = con.prepareStatement("Select * from products;");
		ResultSet rs =st.executeQuery();
		while(rs.next()) {
			ProductForm p = new ProductForm();
			int id=rs.getInt("id");
			String name = rs.getString("name");
			Double price = rs.getDouble("price");
			
			p.setId(id);
			p.setName(name);
			p.setPrice(price);
			
			prod.add(p);
			System.out.println(p);
		}
		
		return prod;
	}

}
