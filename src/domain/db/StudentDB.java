package domain.db;

import domain.model.Student;

import java.util.ArrayList;

public class StudentDB {
    private ArrayList<Student> students = new ArrayList<Student>();

    public StudentDB() {
        Student greetje = new Student("Jongen", "Greetje", "Toegepaste Informatica", 23);
        Student kristien = new Student("Melaerts", "Kristien", "Chemie", 21);
        Student elke = new Student("Steegmans", "Elke", "Vroedkunde", 16);
        Student jan = new Student("Van Hee", "Jan", "Verpleegkunde", 18);

        students.add(greetje);
        students.add(kristien);
        students.add(elke);
        students.add(jan);
    }

    public ArrayList<Student> getStudents() {
        return students;
    }
}
