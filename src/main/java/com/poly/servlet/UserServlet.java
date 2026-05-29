package com.poly.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/user")

public class UserServlet extends HttpServlet {

    @Override
    protected void doGet(
            HttpServletRequest req,
            HttpServletResponse resp
    ) throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");

        resp.setCharacterEncoding("UTF-8");

        resp.setContentType(
                "text/html;charset=UTF-8"
        );

        req.setAttribute(
                "message",
                "Welcome to FPT Polytechnic"
        );

        Map<String, Object> map =
                new HashMap<>();

        map.put(
                "fullname",
                "Nguyễn Văn Tèo"
        );

        map.put(
                "gender",
                "Male"
        );

        map.put(
                "country",
                "Việt Nam"
        );

        req.setAttribute(
                "user",
                map
        );

        req.getRequestDispatcher(
                "/page.jsp"
        ).forward(
                req,
                resp
        );
    }

    @Override
    protected void doPost(
            HttpServletRequest req,
            HttpServletResponse resp
    ) throws ServletException, IOException {

        doGet(
                req,
                resp
        );
    }
}
