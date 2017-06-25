
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

/**
 * Servlet implementation class BuchServlet
 */
@WebServlet("/BuchServlet")
public class BuchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Resource(lookup="jdbc/MyTHIPool")
    DataSource ds;  
	
    Integer i = -1;
    ArrayList<Buch> ergebnisse = new ArrayList<Buch>();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	       request.setCharacterEncoding("UTF-8");
	        HttpSession session = request.getSession();
	        Buch buch = new Buch();
	        
	        buch.setTitel(request.getParameter("titel"));
	        buch.setIsbn(request.getParameter("isbn"));
	        buch.setZustand(request.getParameter("zustand"));
	        buch.setBeschreibung(request.getParameter("beschreibung"));
	        buch.setPreis(request.getParameter("preis"));
	        
	        ResultSet rs = null;
	        
	         /**
	         * Überprüfen ob das <buch schon vorhanden ist, falls ja persistExemplar(), falls nicht persistBuch() ausführen 
	         */
	        try(Connection con = ds.getConnection();
	                
	                PreparedStatement p = con.prepareStatement("SELECT * FROM test")){
	                
	                
	                rs = p.executeQuery();
	                if(rs.next()){
	                    request.setAttribute("buchwahl", buch);
	                    session.setAttribute("buchwahl", buch);
	                    exempl("test");
	                    session.setAttribute("ergebnisse", ergebnisse);
	                    session.setAttribute("i", i);
	                    final RequestDispatcher dispatcher = request.getRequestDispatcher("home/html/Buch.jsp");
	                    dispatcher.forward(request, response);
	                }
	        } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
	}
    public void exempl(String tabelle) throws ServletException{
        ResultSet rs = null;
        try(Connection con = ds.getConnection();
                PreparedStatement p = con.prepareStatement("SELECT * FROM "+tabelle)){
                rs = p.executeQuery();
                while(rs.next()){
                        Buch buch = new Buch();
                        buch.setTitel(rs.getString("titel"));
                        ergebnisse.add(buch);
                        i=i+1;
                }
         } catch (Exception ex) {
              // TODO Auto-generated catch block
              throw new ServletException(ex.getMessage());
         }
    }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
