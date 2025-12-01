package com.khadri.mvc.khadrimart.controller;

import java.io.IOException;

import com.khadri.mvc.khadrimart.connection.DBConnection;
import com.khadri.mvc.khadrimart.controller.form.VegetableForm;
import com.khadri.mvc.khadrimart.form.mapper.VegetableFormMapper;
import com.khadri.mvc.khadrimart.service.VegetableService;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/vegetable")
public class VegetableServlet extends HttpServlet {

    private VegetableService service;
    private VegetableFormMapper mapper;

    @Override
    public void init() throws ServletException {

        service = new VegetableService();
        mapper = new VegetableFormMapper();

        ServletContext context = getServletContext();
        String driver = context.getInitParameter("driver");
        String url = context.getInitParameter("url");
        String username = context.getInitParameter("username");
        String password = context.getInitParameter("password");

        DBConnection.createConnection(driver, url, username, password);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        try {
            String vegname = req.getParameter("vegname");
            String qtyStr = req.getParameter("quantity");
            String userName = "Khadri";

            double quantity = Double.parseDouble(qtyStr);

            VegetableForm form = mapper.map(vegname, quantity, userName);

            int result = service.saveVegetable(form);

            req.setAttribute("status",
                    (result > 0) ? "Success" : "Invalid");

            RequestDispatcher rd = req.getRequestDispatcher("vegetable.jsp");
            rd.forward(req, resp);

        } catch (Exception e) {
        	System.out.println("error Occured");
        }
    }
}
