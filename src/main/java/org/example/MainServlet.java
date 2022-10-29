package org.example;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/login")
public class MainServlet extends HttpServlet {

    public void init(){
        User user1 = new User("user1", "123");
        User user2 = new User("user2", "123");
        users.add(user1);
        users.add(user2);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        req.getRequestDispatcher("login.jsp").forward(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String login = req.getParameter("auth_login");
        String pass = req.getParameter("auth_pass");
        String isMeme = req.getParameter("auth_meme");


        for (User user: users) {
            if(user.getUserName().equals(login)  && user.getUserPassword().equals(pass)) {
                hadLogin = true;
                if(isMeme != null){
                    resp.sendRedirect("https://www.youtube.com/watch?v=dQw4w9WgXcQ&ab_channel=RickAstley");
                }
                else {
                    resp.sendRedirect(req.getContextPath() + "/user");
                }
                break;
            }
        }
        if(!hadLogin) {
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
    }
    List<User> users = new ArrayList<User>();
    boolean hadLogin = false;
}
