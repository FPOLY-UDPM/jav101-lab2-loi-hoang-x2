package com.poly.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/share")
public class SharerServlet extends HttpServlet {

    @Override
    protected void doGet(
            HttpServletRequest req,
            HttpServletResponse resp
    ) throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");

        req.setAttribute(
                "message",
                "Welcome to FPT Polytechnic!"
        );

        req.setAttribute(
                "now",
                new Date()
        );

        req.getRequestDispatcher(
                "/page.jsp"
        ).forward(
                req,
                resp
        );
    }
}