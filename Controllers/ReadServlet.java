package com.example.Employees.Controllers;

import com.example.Employees.DAO.EmployeeDAO;
import com.example.Employees.Model.Employees;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.security.PrivateKey;
import java.util.List;

@WebServlet("/ReadEmployee")
public class ReadServlet extends HttpServlet {
    private EmployeeDAO employeeDAO;

    @Override
    public void init(){
        employeeDAO = new EmployeeDAO();
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        List<Employees> employeesList = employeeDAO.getAllEmployee();
        request.setAttribute("employeesList",employeesList);
        request.getRequestDispatcher("EmployeeListe.jsp").forward(request,response);
    }
}
