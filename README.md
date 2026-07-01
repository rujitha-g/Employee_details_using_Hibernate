# Employee Details Using Hibernate

A Java-based Employee Management System developed using **Hibernate ORM**, **JSP**, **Servlets**, and **MySQL**. This application performs complete CRUD (Create, Read, Update, Delete) operations on employee records through a simple web interface.

## Features

- Add a new employee
- Update employee details
- Delete employee by ID
- Fetch employee by ID
- View all employees
- Hibernate ORM integration
- Maven project structure
- JSP-based user interface
- MySQL database connectivity

## Technologies Used

- Java
- Hibernate ORM
- JSP
- Servlets
- Maven
- MySQL
- Apache Tomcat
- Eclipse IDE

## Project Structure

```
employee_details_using_hibernate
│
├── src/main/java
│   ├── dao
│   ├── model
│   ├── servlet
│   ├── util
│   └── config
│
├── src/main/resources
│   └── hibernate.cfg.xml
│
├── src/main/webapp
│   ├── addEmployee.jsp
│   ├── success.jsp
│   ├── index.jsp
│   └── WEB-INF
│
├── pom.xml
└── README.md
```

## Database

Database Name

```
employees
```

Sample Employee Table

| Column | Type |
|---------|------|
| empId | INT (Primary Key) |
| empName | VARCHAR |
| department | VARCHAR |
| salary | DOUBLE |
| email | VARCHAR |

## Prerequisites

- Java JDK 8 or above
- Maven
- MySQL Server
- Apache Tomcat 9/10
- Eclipse IDE

## Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/<your-username>/employee_details_using_hibernate.git
```

### 2. Import into Eclipse

```
File → Import → Existing Maven Project
```

### 3. Create Database

```sql
CREATE DATABASE employees;
```

Create the employee table according to the entity mapping.

### 4. Configure Hibernate

Update the database credentials in

```
hibernate.cfg.xml
```

```xml
<property name="hibernate.connection.url">
jdbc:mysql://localhost:3306/employees
</property>

<property name="hibernate.connection.username">
root
</property>

<property name="hibernate.connection.password">
your_password
</property>
```

### 5. Build the Project

```bash
mvn clean install
```

### 6. Deploy

Run the project on Apache Tomcat.

Open

```
http://localhost:8080/employee_details_using_hibernate/
```

## CRUD Operations

- Create Employee
- Update Employee
- Delete Employee
- Search Employee by ID
- Display All Employees

## Future Enhancements

- Employee Search by Name
- Pagination
- Login Authentication
- Spring Boot Migration
- REST API Integration
- Bootstrap UI
- Input Validation
- Exception Handling

## Author

**Rujitha G**

Computer Science Engineering Student

## License

This project is developed for learning and educational purposes.
