package cn.itcast.web;

import cn.itcast.service.BusinessService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by yvettee on 2017/10/10.
 */
@WebServlet(name = "ListTreeServlet", urlPatterns = "/listTreeServlet")
public class ListTreeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BusinessService service = new BusinessService();
        List list = service.getAllCategory();
        request.setAttribute("list", list);
        request.getRequestDispatcher("/listTree.jsp").forward(request, response);
    }
}
