package com.example.Employees.Controllers;
import com.example.Employees.DAO.EmployeeDAO;
import com.example.Employees.Model.Employees;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet("/createEmployee")
public class CeateServlet extends HttpServlet {
 private EmployeeDAO EmployeeDAO ;

 @Override
    public void init(){
     EmployeeDAO = new EmployeeDAO();
 }
   @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
     request.getRequestDispatcher("CreateEmployee.jsp").forward(request, response);
   }
    protected  void doPoste(HttpServletRequest request, HttpServletResponse response) throws  ServletException, IOException{
     String name =  request.getParameter("name");
     String address = request.getParameter("address");
     int age = Integer.parseInt(request.getParameter("age"));
     int id = Integer.parseInt(request.getParameter("id"));

        Employees empl = new Employees(name, address, age, id);
        EmployeeDAO.CreateEmployee(empl);
        
        response.sendRedirect("ReadEmployee");
     
    }
 }


