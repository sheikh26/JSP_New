package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.FileUploadDTO;
import com.service.FileUploadService;

import java.sql.Blob;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.io.InputStream;
import java.sql.SQLException;
import java.sql.DriverManager;
/**
 * Servlet implementation class ViewImage
 */
@WebServlet("/ViewImage")
public class ViewImage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewImage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int id = Integer.parseInt(request.getParameter("imageId"));
		System.out.println("id"+id);
		FileUploadDTO dto = new FileUploadDTO();
		 FileUploadService fileUploadService = new FileUploadService();
		Blob image = null;
		  Connection con = null;
		  Statement stmt = null;
		  ResultSet rs = null;
		  ServletOutputStream out = response.getOutputStream();
		  try {
			  dto.setId(id);
			  image = fileUploadService.getImage(dto);
				
		  response.setContentType("image/gif");
		  InputStream in = image.getBinaryStream();
		  int length = (int) image.length();
		  int bufferSize = 1024;
		  byte[] buffer = new byte[bufferSize];
		  while ((length = in.read(buffer)) != -1) {
		  out.write(buffer, 0, length);
		  }
		  in.close();
		  out.flush();
		  } catch (Exception e) {
		  response.setContentType("text/html");
		  out.println("<html><head><title>Unable To Display image</title></head>");
		  out.println("<body><h4><font color='red'>Image Display Error=" + e.getMessage() +
		   "</font></h4></body></html>");
		  return;
		  } finally {
		  try {

		  } catch (Exception e) {
		  e.printStackTrace();
		  }
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
