package com.khadri.mvc.khadrimart.controller;

import java.io.IOException;
import com.khadri.mvc.khadrimart.connection.DBConnection;
import com.khadri.mvc.khadrimart.controller.form.CarsForm;
import com.khadri.mvc.khadrimart.service.CarsService;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/cars")
public class CarsServlet extends HttpServlet {

    private CarsService service;

    @Override
    public void init() throws ServletException {
        service = new CarsService();

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
            String carName = req.getParameter("carname");
            String qtyStr = req.getParameter("quantity");
            String color = req.getParameter("color");

            if (carName != null && qtyStr != null && !qtyStr.isEmpty()) {
                String userName = "Khadri";
                int quantity = Integer.parseInt(qtyStr);

                CarsForm form = new CarsForm();
                form.setCarName(carName);
                form.setQuantity(quantity);
                form.setColor(color);
                form.setUserName(userName);

                int result = service.saveCar(form);

                req.setAttribute("status", (result > 0)
                        ? "Added " + quantity + " of " + carName + " (" + color + ")"
                        : "Failed to add car");
            }
            RequestDispatcher rd = req.getRequestDispatcher("cars.jsp");
            rd.forward(req, resp);

        } catch (Exception e) {
        	System.out.println("error Occured");
        }
    }
}
