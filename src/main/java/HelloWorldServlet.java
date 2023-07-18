import javax.servlet.annotation.WebServlet;
import  javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "HelloWorldServlet", urlPatterns = "/hello-world")
public class HelloWorldServlet extends HttpServlet {
    private int hitCount;

    public void init() {
        // Reset hit counter.
        hitCount = 0;
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        hitCount++;
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        String title = "Total Number of Hits: ";
        out.printf("<h1>Hello, World! %s%d</h1>", title, hitCount);
    }
}
