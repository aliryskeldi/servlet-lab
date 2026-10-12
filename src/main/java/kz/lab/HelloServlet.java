package kz.lab;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/hello")
public class HelloServlet extends HttpServlet {
   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp)
           throws IOException {
       resp.setContentType("text/html;charset=UTF-8");
       PrintWriter out = resp.getWriter();
       out.println("<h2>Сәлем, Servlet!</h2>");
       out.println("<p>Студент: Аты-жөні</p>");
       out.println("<p>Уақыт: " + LocalDateTime.now() + "</p>");
   }
}
