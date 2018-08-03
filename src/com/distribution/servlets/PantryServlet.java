package com.distribution.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.distribution.services.DB;

/**
 * Servlet implementation class MoneyTransaction
 */
@WebServlet("/PantryServlet")
public class PantryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PantryServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");

		// list all food pantry
		if ("list_all".equals(request.getParameter("action"))) {

			// query db
			HashMap<String, Object> resultMap = new HashMap<String, Object>();


			
			HashMap<String, Object> pantryMap = new HashMap<String, Object>();
			
			try {
				
				ArrayList<Hashtable<String, Object>> result = DB.doQuery("select * from pantries");
				
//				HashMap<String, Object> dataMap = new HashMap<String, Object>();
//				dataMap.put("", rs.getString(""));
				
				StringBuilder str = new StringBuilder();
				
				str.append("{");
				
				for(Hashtable<String, Object> data : result) {
					
					str.append("{");
					str.append("\"id\":"+ (String)data.get("pantry_id")+",");
					str.append("\"name\": \""+(String)data.get("name")+"\",");
					str.append("\"address\": \""+(String)data.get("address")+"\",");
					str.append("\"city\": \""+(String)data.get("city")+"\",");
					str.append("\"state\": \""+(String)data.get("state")+"\",");
					str.append("\"zip\": \""+(String)data.get("zip")+"\",");
					str.append("\"phone\": \""+(String)data.get("phone")+"\"");
					str.append("},");
					
				}
				
				str.setLength(str.length() - 1);
				str.append("}");
				System.out.println(str.toString());
				
				PrintWriter out = response.getWriter();

				out.println(str.toString());


			} catch (Exception e) {
				e.printStackTrace();
			}

//			resultMap.put("pantries", "Eaton");
//
//			JSONObject responseJSONObject = new JSONObject(resultMap);

			
		}
		// receive food
		else if ("food".equals(request.getParameter("trType"))) {

			// insert db

		}

	}

}
