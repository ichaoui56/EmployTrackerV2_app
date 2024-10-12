package org.example.employeetrackerv2.seeder;

import org.example.employeetrackerv2.dao.impl.EmployeeDaoImpl;
import org.example.employeetrackerv2.model.entity.Admin;
import org.example.employeetrackerv2.model.enums.Role;

public class AdminSeeder {

    public static void main(String[] args) {
        EmployeeDaoImpl employeeDao = new EmployeeDaoImpl();

        String adminEmail = "ilyaschaoui2002@gmail.com"; // Replace with your admin email
        Admin admin = new Admin("Admin Name", adminEmail, "ilyaschaoui2002@gmail.com", Role.ADMIN);

        employeeDao.insert(admin);

        System.out.println("Admin seeded successfully.");
    }
}
