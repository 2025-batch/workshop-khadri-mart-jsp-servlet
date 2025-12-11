package com.khadri.mvc.khadrimart.controller;

import java.io.IOException;
import com.khadri.mvc.khadrimart.connection.DBConnection;
import com.khadri.mvc.khadrimart.controller.form.FruitsForm;
import com.khadri.mvc.khadrimart.service.FruitsService;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/fruits")
public class FruitsServlet extends HttpServlet {

    private FruitsService service;

    @Override
    public void init() throws ServletException {
        service = new FruitsService();

        ServletContext context = getServletContext();
        String driver = context.getInitParameter("driver");
        String url = context.getInitParameter("url");
        String username = context.getInitParameter("username");
        String password = context.getInitParameter("password");

        DBConnection.createConnection(driver, url, username, password);
        if (DBConnection.getConnection() != null) {
            System.out.println("Database connection successful!");
        } else {
            System.err.println("Database connection failed!");
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        try {
            String fruitname = req.getParameter("fruitname");
            String qtyStr = req.getParameter("quantity");

            if (fruitname != null && qtyStr != null && !qtyStr.isEmpty()) {
                String userName = "Khadri";
                double quantity = Double.parseDouble(qtyStr);

                FruitsForm form = new FruitsForm();
                form.setFruitname(fruitname);
                form.setQuantity(quantity);
                form.setUserName(userName);

                int result = service.saveFruits(form);

                // Set status message to display in JSP
                req.setAttribute("status", (result > 0)
                        ? "Added " + quantity + " kg of " + fruitname
                        : "Failed to add fruit");
            }
            RequestDispatcher rd = req.getRequestDispatcher("fruits.jsp");
            rd.forward(req, resp);

        } catch (Exception e) {
        	System.out.println("error Occured");
        }
    }
}
