import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "PizzaServlet", urlPatterns = "/pizza-order")
public class PizzaServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        response.sendRedirect("./pizza-order.jsp");
    }

    String[] tops;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String crust = request.getParameter("crust");
        String sauce = request.getParameter("sauce");
        String size = request.getParameter("size");
        tops = request.getParameterValues("top");
        String top = "";
        for(String i : tops){
            top += i;
        }
        String address = request.getParameter("address");

        System.out.printf("Crust: %s, Sauce: %s, Size: %s, Toppings: %s, Address: %s", crust, sauce, size, top, address);


    }
}