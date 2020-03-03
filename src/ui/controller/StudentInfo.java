package ui.controller;

import domain.db.StudentDB;
import domain.model.Student;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/StudentInfo")
public class StudentInfo extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String RequestedVoornaam = request.getParameter("voornaam");
        String RequestedAchternaam = request.getParameter("naam");
        String destination;
        boolean found = false;

        StudentDB Databank = new StudentDB();

        for (Student student: Databank.getStudents()) {
            if (!found){
                if (student.getNaam().equals(RequestedAchternaam) && student.getVoornaam().equals(RequestedVoornaam)){
                    found = true;
                    request.setAttribute("resultVoornaam", student.getVoornaam());
                    request.setAttribute("resultAchternaam", student.getNaam());
                    request.setAttribute("resultLeeftijd", student.getLeeftijd());
                    request.setAttribute("resultJob", student.getStudierichting());
                }
            }
        }

        if (found){
            destination = "gevonden.jsp";
        }else{
            destination = "nietgevonden.jsp";
        }

        RequestDispatcher view = request.getRequestDispatcher(destination);
        view.forward(request, response);
    }
}
