 🛠️ Complaint Management System (CMS) – JSP Based Web Application

This project is a full-stack, role-based Complaint Management System (CMS) developed as an individual assignment for the Graduate Diploma in Software Engineering (GDSE). It is designed to simulate an internal system used by the Municipal IT Division to manage employee complaints using Jakarta EE (Servlets, JSP) and the MVC architecture. 


📋 Project Overview

The system allows internal employees and administrative staff to submit, manage, and resolve complaints in a secure and structured environment. It uses synchronous form submissions (`GET`/`POST`) with no AJAX and separates logic clearly between the MVC layers.


🔐 Role-Based Access Control

👨‍💼 Employee Role:
- Register a new employee account (Sign Up)
- Login to the system
- Submit new complaints
- View their own complaints
- Edit/Delete complaints

👨‍💻 Admin Role:
- Login with admin credentials
- View all submitted complaints
- Update complaint status and add remarks
- Delete any complaint in the system


⚙️ Key Features

- ✨ User Registration and Authentication with session handling  
- 🧭 MVC Architecture (Servlets, JSPs, JavaBeans, DAO)  
- 🔐 Secure role-based navigation and permissions  
- 📝 Complaint submission with editable/deletable states  
- 📋 Admin dashboard for centralized complaint control  
- 🌐 All form actions via standard HTML form (GET/POST) only  
- 🔄 No use of AJAX or asynchronous calls (strictly synchronous)


💻 Technology Stack

| Layer       | Technologies Used                      |
|-------------|----------------------------------------|
| Frontend    | JSP, HTML, CSS, Bootstrap 5            |
| Backend     | Jakarta EE                             |
| Database    | MySQL 8                                |
| Server      | Apache Tomcat 11                       |
| Build Tool  | Apache Maven                           |
| Connection  | Apache Commons DBCP2                   |


                        

🧑‍💻 Author
Ayusha Wijerathna
Graduate Diploma in Software Engineering – GDSE
Individual Assignment – JSP Full Stack Complaint Management System

🔗 GitHub: https://github.com/Ayusha200333/CMS-JavaEE-New
