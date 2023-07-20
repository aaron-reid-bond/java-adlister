import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Random;

@WebServlet (name="GuessServlet", urlPatterns = "/guess")
public class GuessServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/guess.jsp").forward(req, resp);
//        resp.sendRedirect("/guess.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Random random = new Random();
        int randomNum = random.nextInt(3)+ 1;
        int userNum = Integer.parseInt(req.getParameter("number"));

        System.out.println("User Number: " + userNum);
        System.out.println("Random Number: " + randomNum);

        if(randomNum == userNum){
            resp.sendRedirect("/yes");
//            req.getRequestDispatcher("/correct").forward(req,resp);
        }else{
            resp.sendRedirect("/incorrect");
//            req.getRequestDispatcher("/incorrect").forward(req,resp);
        }

    }}