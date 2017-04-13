package cn.fyypumpkin.Servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by fyy on 4/13/17.
 */
public class LoginServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String piccode = ((String) req.getSession().getAttribute("piccode")).toUpperCase();
        String checkcode = req.getParameter("checkcode").toUpperCase();
        if(checkcode.equals(piccode)){
            req.getRequestDispatcher("/WEB-INF/Jsp/success.jsp").forward(req,resp);
        }else{
            resp.sendRedirect("/index.jsp");
        }




    }
}
