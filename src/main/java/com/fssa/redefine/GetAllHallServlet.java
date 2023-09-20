package com.fssa.redefine;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import com.fssa.project.model.Hall;


/**
 * Servlet implementation class GetAllAccounts
 */
@WebServlet("/GetAllHallJSONServlet")
public class GetAllHallServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		List<Hall> accounts = new ArrayList<Hall> ();
		
		accounts.add(new Hall(1,"Chandru Hall","porur","9876543213","850","16000","https://content.jdmagicbox.com/comp/chennai/w1/044pxx44.xx44.221002165006.q7w1/catalogue/ppresidency-padur-chennai-banquet-halls-o6567wpfto.jpg","https://content.jdmagicbox.com/comp/chennai/w1/044pxx44.xx44.221002165006.q7w1/catalogue/ppresidency-padur-chennai-banquet-halls-o6567wpfto.jpg","https://content.jdmagicbox.com/comp/chennai/w1/044pxx44.xx44.221002165006.q7w1/catalogue/ppresidency-padur-chennai-banquet-halls-o6567wpfto.jpg","https://content.jdmagicbox.com/comp/chennai/w1/044pxx44.xx44.221002165006.q7w1/catalogue/ppresidency-padur-chennai-banquet-halls-o6567wpfto.jpg","https://content.jdmagicbox.com/comp/chennai/w1/044pxx44.xx44.221002165006.q7w1/catalogue/ppresidency-padur-chennai-banquet-halls-o6567wpfto.jpg","https://content.jdmagicbox.com/comp/chennai/w1/044pxx44.xx44.221002165006.q7w1/catalogue/ppresidency-padur-chennai-banquet-halls-o6567wpfto.jpg","https://content.jdmagicbox.com/comp/chennai/w1/044pxx44.xx44.221002165006.q7w1/catalogue/ppresidency-padur-chennai-banquet-halls-o6567wpfto.jpg"));
		accounts.add(new Hall(2,"Ara Hall","Velachery","9870043213","850","16000","https://content.jdmagicbox.com/comp/chennai/w1/044pxx44.xx44.221002165006.q7w1/catalogue/ppresidency-padur-chennai-banquet-halls-o6567wpfto.jpg","https://content.jdmagicbox.com/comp/chennai/w1/044pxx44.xx44.221002165006.q7w1/catalogue/ppresidency-padur-chennai-banquet-halls-o6567wpfto.jpg","https://content.jdmagicbox.com/comp/chennai/w1/044pxx44.xx44.221002165006.q7w1/catalogue/ppresidency-padur-chennai-banquet-halls-o6567wpfto.jpg","https://content.jdmagicbox.com/comp/chennai/w1/044pxx44.xx44.221002165006.q7w1/catalogue/ppresidency-padur-chennai-banquet-halls-o6567wpfto.jpg","https://content.jdmagicbox.com/comp/chennai/w1/044pxx44.xx44.221002165006.q7w1/catalogue/ppresidency-padur-chennai-banquet-halls-o6567wpfto.jpg","https://content.jdmagicbox.com/comp/chennai/w1/044pxx44.xx44.221002165006.q7w1/catalogue/ppresidency-padur-chennai-banquet-halls-o6567wpfto.jpg","https://content.jdmagicbox.com/comp/chennai/w1/044pxx44.xx44.221002165006.q7w1/catalogue/ppresidency-padur-chennai-banquet-halls-o6567wpfto.jpg"));
		accounts.add(new Hall(3,"Chan Hall","Avadi","9876548813","850","16000","https://content.jdmagicbox.com/comp/chennai/w1/044pxx44.xx44.221002165006.q7w1/catalogue/ppresidency-padur-chennai-banquet-halls-o6567wpfto.jpg","https://content.jdmagicbox.com/comp/chennai/w1/044pxx44.xx44.221002165006.q7w1/catalogue/ppresidency-padur-chennai-banquet-halls-o6567wpfto.jpg","https://content.jdmagicbox.com/comp/chennai/w1/044pxx44.xx44.221002165006.q7w1/catalogue/ppresidency-padur-chennai-banquet-halls-o6567wpfto.jpg","https://content.jdmagicbox.com/comp/chennai/w1/044pxx44.xx44.221002165006.q7w1/catalogue/ppresidency-padur-chennai-banquet-halls-o6567wpfto.jpg","https://content.jdmagicbox.com/comp/chennai/w1/044pxx44.xx44.221002165006.q7w1/catalogue/ppresidency-padur-chennai-banquet-halls-o6567wpfto.jpg","https://content.jdmagicbox.com/comp/chennai/w1/044pxx44.xx44.221002165006.q7w1/catalogue/ppresidency-padur-chennai-banquet-halls-o6567wpfto.jpg","https://content.jdmagicbox.com/comp/chennai/w1/044pxx44.xx44.221002165006.q7w1/catalogue/ppresidency-padur-chennai-banquet-halls-o6567wpfto.jpg"));
		JSONArray accountsJSonArray = new JSONArray(accounts);
		PrintWriter out = response.getWriter();
		out.println(accountsJSonArray.toString());
		out.flush();
	}

}
