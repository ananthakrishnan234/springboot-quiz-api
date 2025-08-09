#  Spring Boot Quiz API

![Java](https://img.shields.io/badge/Java-17-orange?style=flat-square&logo=java)
![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.x-brightgreen?style=flat-square&logo=springboot)
![Maven](https://img.shields.io/badge/Maven-3.x-blue?style=flat-square&logo=apachemaven)
![License](https://img.shields.io/badge/License-MIT-lightgrey?style=flat-square)

A simple yet powerful **Quiz API** built using **Spring Boot**.  
It allows users to fetch quiz questions, submit answers, and get scores through REST APIs.  
Perfect for learning Spring Boot fundamentals, REST API design, and backend development.

---

##  Features

-  **Fetch Questions** – Retrieve quiz questions in JSON format.
-  **Submit Answers** – Send your answers and get instant results.
-  **Score Calculation** – Automatically calculates your score.
-  **Randomized Questions** – Supports shuffling questions for variety.
-  **Clean REST Endpoints** – Well-structured and easy to integrate with frontends.
-  **Extensible** – Easy to expand with more features like categories or difficulty levels.

---

##  Project Structure

```
SpringBoot-Quiz-API/
│
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com/example/quiz/
│   │   │       ├── controller/        # REST Controllers
│   │   │       ├── model/             # Entity & DTO classes
│   │   │       ├── repository/        # Data Access Layer
│   │   │       ├── service/           # Business Logic Layer
│   │   │       └── QuizApplication.java # Main Application
│   │   └── resources/
│   │       ├── application.properties # Configurations
│   │       └── data.sql               # Initial quiz data
│   └── test/                          # Unit & Integration Tests
│
├── pom.xml                             # Maven dependencies
└── README.md
```

---

##  Setup Instructions

###  Clone the Repository
```bash
git clone https://github.com/ananthakrishnan234/SpringBoot-Quiz-API.git
cd SpringBoot-Quiz-API
```

###  Configure Database
- Open `src/main/resources/application.properties`
- Update the database settings (example using **H2** in-memory DB):
```properties
spring.datasource.url=jdbc:h2:mem:quizdb
spring.datasource.driverClassName=org.h2.Driver
spring.datasource.username=sa
spring.datasource.password=
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
```
*(You can switch to MySQL/PostgreSQL if needed)*

###  Build & Run the Application
```bash
mvn clean install
mvn spring-boot:run
```

###  Test APIs in Postman
- **Get Questions:** `GET http://localhost:8080/api/questions`
- **Submit Answers:** `POST http://localhost:8080/api/submit`
```json
{
  "answers": {
    "1": "Option A",
    "2": "Option C",
    "3": "Option B"
  }
}
```

---

##  Example Endpoints

| Method | Endpoint                  | Description               |
|--------|---------------------------|---------------------------|
| GET    | `/api/questions`          | Get all quiz questions    |
| POST   | `/api/submit`              | Submit quiz answers       |
| GET    | `/api/questions/random/5` | Get 5 random questions    |

---

##  Technologies Used

- **Java 17**
- **Spring Boot 3.x**
- **Spring Data JPA**
- **H2 / MySQL**
- **Maven**
- **JUnit** for testing

---

##  License

This project is licensed under the MIT License – see the [LICENSE](LICENSE) file for details.

---

##  Contact

**Ananthakrishnan Sudhakaran**  
📧 Email: ananthakrishnans234@gmail.com  
💼 GitHub: [ananthakrishnan Sudhakaran](https://github.com/ananthakrishnan234)  
💼 LinkedIn: [Ananthakrishnan Sudhakaran](https://www.linkedin.com/in/ananthakrishna234/)

---
