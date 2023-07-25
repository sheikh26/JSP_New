package com.servlet;

import java.io.IOException;
import java.io.InputStream;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.dto.FileUploadDTO;
import com.service.FileUploadService;

/**
 * Servlet implementation class FileUploadDBServlet
 */

/* Create table in DB
 * CREATE TABLE `contacts` ( `id` int NOT NULL AUTO_INCREMENT, `photo` blob,
 * PRIMARY KEY (`id`) ) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4
 * COLLATE=utf8mb4_0900_ai_ci; SELECT * FROM demo.contacts;
 */
		
@WebServlet("/FileUploadDBServlet")
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class FileUploadDBServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
    	//response.getWriter().append("Served at: ").append(request.getContextPath());
         
        InputStream inputStream = null; // input stream of the upload file
         
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("photo");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
             
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }
        FileUploadDTO dto = new FileUploadDTO();
        dto.setInputStream(inputStream);
        FileUploadService fileUploadService = new FileUploadService();
        fileUploadService.UploadImage(dto);
         
        response.getWriter().append("File Upload Successfully in DB").append(request.getContextPath());        
    }
}
