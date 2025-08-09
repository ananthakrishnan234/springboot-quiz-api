#  Spring Boot Quiz API

![Java](https://img.shields.io/badge/Java-17-orange?style=flat-square&logo=java)
![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.x-brightgreen?style=flat-square&logo=springboot)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-15-blue?style=flat-square&logo=postgresql)
![Maven](https://img.shields.io/badge/Maven-3.x-blue?style=flat-square&logo=apachemaven)
![License](https://img.shields.io/badge/License-MIT-lightgrey?style=flat-square)

A simple yet powerful **Quiz API** built using **Spring Boot** and **PostgreSQL**.  
It allows users to fetch quiz questions, submit answers, and get scores through REST APIs.  
Perfect for learning Spring Boot fundamentals, REST API design, backend development, and database integration.

---

##  Features

-  **Fetch Questions** – Retrieve quiz questions in JSON format.
-  **Submit Answers** – Send your answers and get instant results.
-  **Score Calculation** – Automatically calculates your score.
-  **Randomized Questions** – Supports shuffling questions for variety.
-  **Category Filtering** – Fetch questions by category.
-  **Clean REST Endpoints** – Easy to integrate with any frontend.
-  **Extensible** – Expandable for difficulty levels, timed quizzes, etc.

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
│   │       ├── application.properties # DB Configurations
│   │       └── data.sql               # Initial quiz data (optional)
│   └── test/                          # Unit & Integration Tests
│
├── db_export/                          # Exported PostgreSQL database scripts
├── pom.xml                             # Maven dependencies
└── README.md
```

---

##  Setup Instructions

###  1️⃣ Clone the Repository
```bash
git clone https://github.com/ananthakrishnan234/SpringBoot-Quiz-API.git
cd SpringBoot-Quiz-API
```

###  2️⃣ Configure PostgreSQL Database
- Create a database:
```sql
CREATE DATABASE quizdb;
```
- Import existing data:
```bash
psql -U postgres -d quizdb -f db_export/questiondb.sql
```
*(Or restore using pgAdmin → Right-click DB → Restore → Select `.backup` file)*

- Update `src/main/resources/application.properties`:
```properties
spring.datasource.url=jdbc:postgresql://localhost:5432/quizdb
spring.datasource.username=postgres
spring.datasource.password=your_password
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.PostgreSQLDialect
```

---

###  3️⃣ Build & Run the Application
```bash
mvn clean install
mvn spring-boot:run
```

---

##  Example API Endpoints

| Method | Endpoint                       | Description                       |
|--------|--------------------------------|-----------------------------------|
| GET    | `/question/allQuestions`       | Get all quiz questions            |
| GET    | `/question/category/{category}`| Get questions by category         |
| POST   | `/quiz`                        | Create quiz by category & number  |
| POST   | `/quiz/submit`                 | Submit quiz answers and get score |
| POST   | `/question/add`                | Add new question to database      |

---

##  Example API Request (Submit Answers)
```json
POST /quiz/submit
{
  "responses": [
    { "id": 1, "response": "Option A" },
    { "id": 2, "response": "Option C" },
    { "id": 3, "response": "Option B" }
  ]
}
```

---

##  Technologies Used

- **Java 17**
- **Spring Boot 3.x**
- **Spring Data JPA**
- **PostgreSQL**
- **Maven**
- **JUnit** for testing

---

##  License

This project is licensed under the MIT License – see the [LICENSE](LICENSE) file for details.

---

##  Contact

**Ananthakrishnan Sudhakaran**  
📧 Email: [ananthakrishnans234@gmail.com](mailto:ananthakrishnans234@gmail.com)  
💼 GitHub: [Ananthakrishnan Sudhakaran](https://github.com/ananthakrishnan234)  
💼 LinkedIn: [Ananthakrishnan Sudhakaran](https://www.linkedin.com/in/ananthakrishna234/)
