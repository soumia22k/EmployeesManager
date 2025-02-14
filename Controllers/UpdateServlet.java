package com.example.Employees.Controllers;

import com.example.Employees.DAO.EmployeeDAO;
import com.example.Employees.Model.Employees;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/UpdateEmployee")
public class UpdateServlet extends HttpServlet{
     private EmployeeDAO employeeDAO;

     @Override
      public void init(){
         employeeDAO = new EmployeeDAO();
     }

     @Override
     protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         int id = Integer.parseInt(request.getParameter("id"));
         Employees employees = employeeDAO.getEmployeesById(id);
         request.setAttribute("employees",employees);
         request.getRequestDispatcher("UpdateEmployee.jsp").forward(request, response);
     }

}
