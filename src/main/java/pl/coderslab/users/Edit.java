package pl.coderslab.users;

import pl.coderslab.entity.User;
import pl.coderslab.entity.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "Edit", value = "/users/edit")
public class Edit extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("userName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        if (userName == "" || email == "" || password == "") {
            response.sendRedirect("/users/ERROR.jsp");
            return;
        }
        int id = Integer.parseInt(request.getParameter("id"));
        UserDao userDao = new UserDao();
        User user = userDao.read(id);
        user.setUserName(userName);
        user.setEmail(email);
        user.setPassword(password);
        userDao.update(user);
        response.sendRedirect("/users/list");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        int idParsed = Integer.parseInt(id);
        UserDao userDao = new UserDao();
        User read = userDao.read(idParsed);
        request.setAttribute("user", read);
        getServletContext().getRequestDispatcher("/users/edit.jsp").forward(request,response);
    }
}
