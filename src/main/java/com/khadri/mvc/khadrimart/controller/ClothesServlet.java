package com.khadri.mvc.khadrimart.controller; 

import java.io.IOException;
import com.khadri.mvc.khadrimart.connection.DBConnection;
import com.khadri.mvc.khadrimart.controller.form.ClothesForm;
import com.khadri.mvc.khadrimart.service.ClothesService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/clothes")
public class ClothesServlet extends HttpServlet {

    private ClothesService service;

    public void init() throws ServletException {
        service = new ClothesService();

        ServletContext context = getServletContext();
        String driver = context.getInitParameter("driver");
        String url = context.getInitParameter("url");
        String username = context.getInitParameter("username");
        String password = context.getInitParameter("password");

        DBConnection.createConnection(driver, url, username, password);
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String clothName = req.getParameter("clothname");
            String quantityStr = req.getParameter("quantity");
            String userName = "Khadri";

            int quantity = Integer.parseInt(quantityStr);

            ClothesForm form = new ClothesForm();
            form.setClothName(clothName);
            form.setQuantity(quantity);
            form.setUserName(userName);

            int result = service.saveCloth(form);

            req.setAttribute("status", (result > 0) ? "Added " + quantity + " " + clothName
                                                    : "Failed to add cloth");

            RequestDispatcher rd = req.getRequestDispatcher("clothes.jsp");
            rd.forward(req, resp);

        } catch (Exception e) {
        	System.out.println("error Occured");
        }
    }
}
