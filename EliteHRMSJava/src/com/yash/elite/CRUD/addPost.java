package com.yash.elite.CRUD;
import com.yash.elite.Post.PostDao;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.servlet.annotation.MultipartConfig;
import java.io.IOException;
import java.io.InputStream;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@MultipartConfig(maxFileSize = 16177215)
public class addPost extends HttpServlet
{
	/*
	 * protected void doPost(HttpServletRequest request, HttpServletResponse
	 * response) throws ServletException, IOException { String res; int tot; int
	 * a=0; String empId,text,pDate;
	 * 
	 * DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
	 * LocalDateTime now = LocalDateTime.now();
	 * 
	 * empId = request.getParameter("empId"); pDate = dtf.format(now); text =
	 * request.getParameter("description"); tot =
	 * Integer.parseInt(request.getParameter("tot"));
	 * 
	 * 
	 * Part filePart[] = new Part[10]; for(int i=0;i<tot;i++) { filePart[i] =
	 * request.getPart("imgFile"+(i+1)); } InputStream imgFile[] = new
	 * InputStream[10]; for(int j=0;j<tot;j++) { if(filePart[j]!=null &&
	 * filePart[j].getSize()!=0) { imgFile[j] = filePart[j].getInputStream(); a++; }
	 * } PostDao empPost = new PostDao(); res =
	 * empPost.addPost(empId,pDate,text,imgFile,a);
	 * request.setAttribute("result",res);
	 * request.getRequestDispatcher("/addPost.jsp").forward(request, response); }
	 */
}
