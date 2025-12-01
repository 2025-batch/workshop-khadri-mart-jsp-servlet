package com.khadri.mvc.khadrimart.controller;

import java.io.IOException;
import com.khadri.mvc.khadrimart.connection.DBConnection;
import com.khadri.mvc.khadrimart.controller.form.SnacksForm;
import com.khadri.mvc.khadrimart.service.SnacksService;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/snacks")
public class SnacksServlet extends HttpServlet {

    private SnacksService service;

    @Override
    public void init() throws ServletException {
        service = new SnacksService();
        ServletContext context = getServletContext();
        String driver = context.getInitParameter("driver");
        String url = context.getInitParameter("url");
        String username = context.getInitParameter("username");
        String password = context.getInitParameter("password");

        DBConnection.createConnection(driver, url, username, password);

        if (DBConnection.getConnection() != null) {
            System.out.println("Database connected successfully");
        } else {
            System.out.println("Database connection failed!");
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        resp.setContentType("text/html");

        try {
            String snackName = req.getParameter("snackname");
            String qtyStr = req.getParameter("quantity");

            if (snackName != null && qtyStr != null && !qtyStr.isEmpty()) {
                String userName = "Khadri";
                double quantity = Double.parseDouble(qtyStr);

                SnacksForm form = new SnacksForm();
                form.setSnackName(snackName);  // keep your original field
                form.setQuantity(quantity);
                form.setUserName(userName);

                int result = service.saveSnack(form);

                req.setAttribute("status", (result > 0) 
                        ? "Success: Added " + quantity + " kg of " + snackName
                        : "Failed to add snack");
            }

            RequestDispatcher rd = req.getRequestDispatcher("snacks.jsp");
            rd.forward(req, resp);

        } catch (Exception e) {
            e.printStackTrace();
            req.setAttribute("status", "Error occurred: " + e.getMessage());
            RequestDispatcher rd = req.getRequestDispatcher("snacks.jsp");
            rd.forward(req, resp);
        }
    }
}
