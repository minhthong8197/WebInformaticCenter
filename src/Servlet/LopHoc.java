package Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.LopHocModel;


@WebServlet("/DangKyOnlineServlet")
public class LopHoc extends HttpServlet 
{	
	private static final long serialVersionUID = 1L;

	public LopHoc()
	{
		super();
	}
	
	public void init(ServletConfig config) throws ServletException
	{
		super.init(config);
		
		//Load JDBC Driver
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
		}
		catch (ClassNotFoundException e)
		{
			throw new ServletException(e);
		}
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{
		List<LopHocModel> lophocs = new ArrayList<LopHocModel>();
		//Tạo connection
		Connection c = null;
		try
		{
			String url = "jdbc:mysql://localhost/web";
			String username = "root";
			String password = "1234";
			
			c = DriverManager.getConnection(url, username, password);
			Statement stmt = c.createStatement();
			
			//Thực thi câu truy vấn
			ResultSet rs = stmt.executeQuery("SELECT MaLopHoc, ThoiGian, NgayKhaiGiang, DiaDiemHoc, TenMon, HocPhi " 
					+ "FROM web.lichkhaigiang "
					+ "where TenMon = N'Thiết kế Website'");
			
			//xử lý kết quả
			while(rs.next()) 
			{	
				//chỗ này phải viết thường, viết hoa là bốc
				LopHocModel lophoc = new LopHocModel(
						rs.getString("malophoc"),
						rs.getString("thoigian"),
						rs.getDate("ngaykhaigiang"),
						rs.getString("diadiemhoc"),
						rs.getString("tenmon"),
						rs.getString("hocphi"));
				lophocs.add(lophoc);
			}
		}
		catch(SQLException e)
		{
			throw new ServletException(e);
		}
		finally
		{
			//đóng connection
			try
			{
				if(c != null) c.close();
			}
			catch(SQLException e)
			{
				throw new ServletException(e);
			}
		}

		request.setAttribute("listLopHocs", lophocs);
		request.getRequestDispatcher("DangKyThietKeWebsite.jsp").forward(request, response);;
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
