# 🚀 Cognizant Deep Skilling & UpSkilling Program

<div align="center">

![DotNet](https://img.shields.io/badge/.NET-8.0-512BD4?style=for-the-badge&logo=dotnet&logoColor=white)
![C#](https://img.shields.io/badge/C%23-12.0-239120?style=for-the-badge&logo=c-sharp&logoColor=white)
![Angular](https://img.shields.io/badge/Angular-17%2B-DD0031?style=for-the-badge&logo=angular&logoColor=white)
![TypeScript](https://img.shields.io/badge/TypeScript-5.0-3178C6?style=for-the-badge&logo=typescript&logoColor=white)
![SQL Server](https://img.shields.io/badge/Microsoft%20SQL%20Server-CC292B?style=for-the-badge&logo=microsoftsqlserver&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Git](https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white)
![NgRx](https://img.shields.io/badge/NgRx-State%20Management-BA2BD2?style=for-the-badge&logo=ngrx&logoColor=white)

**Comprehensive Learning & Hands-On Repository for the DotNet & Angular Full-Stack Track**

Developed by **Kattamuri Sanjana Priya Darshini** • *Vignan's Foundation for Science, Technology and Research*

---

</div>

## 📌 Overview

This repository contains the complete learning materials, architectural implementations, mandatory hands-on assignments, and end-to-end projects developed as part of the **Cognizant Deep Skilling & UpSkilling Program (DotNet & Angular Track)**.

The curriculum covers a structured journey from foundational front-end & back-end technologies to enterprise-grade full-stack architecture, unit testing, microservices, containerization, and modern cloud/DevOps practices.

---

## 🧭 Repository Blueprint & Navigation

```text
Cognizant_DEEPSKILLING/
├── 📁 DeepSkilling/                    # 7-Week Intensive Enterprise Engineering Curriculum
│   ├── 📁 WEEK 1/                      # Design Patterns, DSA, Advanced SQL, Unit Testing (NUnit & Moq)
│   ├── 📁 WEEK 2/                      # Entity Framework Core 8.0 & ASP.NET Core 8 Web API
│   ├── 📁 WEEK 3/                      # ASP.NET Core 8 Advanced Web API (Middleware, Security, Serilog)
│   ├── 📁 WEEK 4/                      # Microservices Architecture & Distributed JWT Authentication
│   ├── 📁 WEEK 5/                      # Angular Fundamentals & Hands-on 1–5 (Forms, Pipes, Directives)
│   ├── 📁 WEEK 6/                      # Complete Angular Portal (NgRx), Hands-on 6–10, Git, CI/CD
│   └── 📁 WEEK 7/                      # DevOps Lifecycle, Docker Containerization & GenAI Fundamentals
│
├── 📁 UpSkilling/                      # Foundation Modules & Hands-on Projects
│   ├── 📁 ANSI-SQL-MySQL-Exercises/    # Schema, Seed Data & Queries for MySQL Database
│   ├── 📁 Module 1/                    # Web Basics (HTML5, CSS3, Bootstrap 5, JavaScript, jQuery)
│   ├── 📁 Module 2/                    # ANSI SQL Using MySQL (25 Business Analytics Exercises)
│   ├── 📁 Module 3/                    # Modern C# & ADO.NET (30 Hands-on Exercises)
│   └── 📁 Web-Development/             # Local Community Event Portal (Multi-page Web App)
│
└── 📄 README.md                        # Master Repository Documentation
```

---

## 🛠️ Technology Stack Matrix

| Layer / Domain | Technologies & Frameworks |
| :--- | :--- |
| **Backend & Core** | C# 12, .NET 8.0, ASP.NET Core Web API, RESTful Services, Swagger/OpenAPI |
| **Data Access & ORM** | Entity Framework Core 8.0 (Code-First, LINQ, Migrations, Proxies), ADO.NET (Connected & Disconnected) |
| **Databases** | Microsoft SQL Server, LocalDB, MySQL 8.0 |
| **Frontend Framework** | Angular 17+, TypeScript, RxJS, NgRx (Store, Actions, Reducers, Effects, Selectors) |
| **Web Basics & UI** | HTML5, CSS3, JavaScript (ES6+), jQuery, Bootstrap 5 |
| **Testing & Mocking** | NUnit, Moq, Jasmine, Karma |
| **DevOps & Containers**| Docker, Dockerfile, Docker Compose, Kubernetes Basics, CI/CD Pipelines |
| **Version Control** | Git, GitHub, Branching/Merging, Conflict Resolution |
| **Architecture & Emerging** | Microservices Architecture, API Gateway, JWT Auth, GenAI Fundamentals, Prompt Engineering |

---

# 📚 Detailed DeepSkilling Curriculum (Weeks 1 – 7)

### 🔹 [Week 1: Foundations, Architecture & Testing](file:///DeepSkilling/WEEK%201)
Focuses on solid software engineering principles, algorithmic problem solving, enterprise database querying, and test-driven development.
* **Design Principles & Patterns**:
  * *Singleton Pattern*: Thread-safe `Logger` implementation ensuring a single logging instance across the application lifecycle.
  * *Factory Method Pattern*: `DocumentFactory` creating dynamic document types (`WordDocument`, `PdfDocument`, `ExcelDocument`) adhering to Open/Closed Principle.
  * *SOLID Principles*: Decoupling dependencies through abstractions.
* **Data Structures & Algorithms**:
  * *E-Commerce Search Optimization*: Binary Search vs. Linear Search implementations with Big-O time complexity analysis.
  * *Financial Forecasting*: Recursive growth calculation and dynamic forecasting algorithms.
* **Advanced SQL**:
  * Mandatory stored procedures, window ranking functions (`ROW_NUMBER`, `RANK`, `DENSE_RANK`), and scalar functions.
  * Additional database exercises on indexes, triggers, and query execution performance.
* **NUnit & Moq Unit Testing**:
  * Unit tests for arithmetic business logic using NUnit (`CalculatorTests`).
  * Dependency mocking via Moq (`IMailSender` and `CustomerComm`) verifying call counts and isolated behavior.

---

### 🔹 [Week 2: ORM & RESTful APIs](file:///DeepSkilling/WEEK%202)
Focuses on relational data modeling with Entity Framework Core 8.0 and core RESTful API development.
* **Entity Framework Core 8.0**:
  * `01-CodeFirst-Relationships`: School database modeling 1-to-1 (`Student-Address`), 1-to-Many (`Department-Student`), and Many-to-Many (`Student-Course` via `Enrollment`).
  * `02-CRUD-LINQ`: Repository patterns, DTO projections (`ProductSummaryDto`), asynchronous CRUD (`AddAsync`, `ToListAsync`), and LINQ filters.
  * `03-Loading-Performance`: Eager Loading (`Include`), Lazy Loading Proxies, Explicit Loading, `AsNoTracking()` optimization, `RowVersion` optimistic concurrency, and EF Core 8 batch updates (`ExecuteUpdateAsync`).
* **ASP.NET Core 8.0 Web API**:
  * `01-CRUD-RestApi`: In-memory RESTful endpoints with full HTTP verb handling (`GET`, `POST`, `PUT`, `DELETE`).
  * `02-Swagger-WebApi`: OpenAPI specification, XML comments integration, and interactive Swagger UI.
  * `03-JWT-Auth-WebApi`: JSON Web Token authentication with role-based authorization policies (`Admin`, `User`).

---

### 🔹 [Week 3: Advanced Web API Security & Reliability](file:///DeepSkilling/WEEK%203)
Enterprise API infrastructure, pipeline filters, exception resiliency, and defensive API security.
* `04-Middleware-Filters`:
  * Custom `RequestLoggingMiddleware` for HTTP lifecycle tracking.
  * Action filters (`CustomActionFilter`) and exception filters (`CustomExceptionFilter`) for request interception.
* `05-ExceptionHandling-Serilog`:
  * Centralized `GlobalExceptionMiddleware` returning RFC 7807 compliant problem details.
  * Structured logging with Serilog to console and rolling log files.
* `06-ApiKey-CORS-Security`:
  * Custom `ApiKeyMiddleware` validating `X-Api-Key` headers for endpoint security.
  * Configured Cross-Origin Resource Sharing (CORS) policies.

---

### 🔹 [Week 4: Microservices Architecture](file:///DeepSkilling/WEEK%204)
Distributed architecture design patterns, service decoupling, and token verification across services.
* **Microservices vs. Monolithic Architecture**: Service decomposition principles, bounding contexts, and data segregation.
* **Synchronous & Asynchronous Communication**: RESTful inter-service communication and API Gateways.
* **Distributed Authentication**: `Exercise_01_JWTAuthentication` & `Exercise_02` implementing stateless token verification across distinct API boundaries.

---

### 🔹 [Week 5: Angular Fundamentals & Forms](file:///DeepSkilling/WEEK%205)
Modern Angular (Standalone architecture) essentials, components, directives, and forms handling.
* **Hands-On 1**: Angular project setup, directory layout, and root component structure.
* **Hands-On 2**: Component tree decomposition (`HeaderComponent`, `HomeComponent`, `CourseListComponent`, `StudentProfileComponent`) and master-detail data binding.
* **Hands-On 3**:
  * Custom Pipes: `CreditLabelPipe` formatting academic credit indicators.
  * Custom Directives: `HighlightDirective` providing interactive DOM styling on hover.
* **Hands-On 4**: Template-driven forms with input validation (`#form="ngForm"`, required constraints, error messages).
* **Hands-On 5**: Reactive forms using `FormBuilder`, `FormGroup`, `FormControl`, and custom dynamic validators (`ReactiveEnrollmentFormComponent`).

---

### 🔹 [Week 6: Enterprise Angular, NgRx, Git & CI/CD](file:///DeepSkilling/WEEK%206)
Full enterprise frontend lifecycle, state management, version control mastery, and automation.
* **Student Course Portal (`Angular Complete Project`)**:
  * Full-fledged enterprise single-page application built with standalone Angular components.
  * **NgRx Store Architecture**: Actions, reducers, effects, and memoized selectors for both `Course` and `Enrollment` state slices.
  * Integration with mock RESTful backend via JSON-server.
* **Angular Hands-On 6–10**:
  * *Hands-On 6*: Singleton Services & Dependency Injection (`CourseService`, `EnrollmentService`, `NotificationService`).
  * *Hands-On 7*: Advanced Routing, Nested Layouts, `AuthGuard`, and `UnsavedChangesGuard`.
  * *Hands-On 8*: HTTP Client, API error interceptors, and `db.json` mock data.
  * *Hands-On 9*: Isolated NgRx state store module.
  * *Hands-On 10*: Unit testing components and services using Jasmine & Karma (`*.spec.ts`).
* **Git Version Control Mastery**:
  * `Exercise 1`: Git repository setup, staging, committing, and git log inspections.
  * `Exercise 2`: Configuring `.gitignore` rules for .NET and Node.js artifacts.
  * `Exercise 3`: Feature branching workflows and fast-forward/non-fast-forward merges.
  * `Exercise 4`: Conflict simulation, manual resolution, and merge commits.
  * `Exercise 5`: Remote origin configuration, branch tracking, and push workflows.
* **CI/CD Fundamentals**:
  * Automated build, test, and release pipelines; CI/CD concepts; DevOps toolchains.

---

### 🔹 [Week 7: Cloud DevOps, Docker & Generative AI](file:///DeepSkilling/WEEK%207)
Containerization, modern operations lifecycle, and generative AI developer workflows.
* **DevOps**:
  * DevOps culture, continuous delivery lifecycles, artifact management, and deployment strategies.
* **Docker & Containerization**:
  * Docker Engine, image building with multi-stage `Dockerfile`, container management commands.
  * `docker-compose.yml` for multi-container coordination, network bridging, and volume mounts.
  * Introduction to Kubernetes container orchestration (Pods, Deployments, Services).
* **Generative AI Fundamentals**:
  * Prompt engineering techniques (zero-shot, few-shot, chain-of-thought).
  * GitHub Copilot for code completion, unit test generation, and AI-assisted refactoring.
  * Responsible AI: Security vulnerabilities, IP protection, code privacy, and ethical guidelines.

---

# 🎓 Detailed UpSkilling Curriculum

### 🔸 [Module 1: Web Development Fundamentals](file:///UpSkilling/Module%201)
* **HTML5 (10 Exercises)**: Semantic layouts (`<header>`, `<nav>`, `<article>`, `<section>`, `<footer>`), audio/video embedding, forms, table structures, and accessibility attributes.
* **CSS3 (9 Exercises)**: Selectors, Box Model, Flexbox, CSS Grid, animations, transitions, and responsive media queries.
* **Bootstrap 5**: Grid layout system, responsive navbar, cards, modal dialogs, and utility classes.
* **JavaScript (14 Exercises)**: DOM manipulation, event listeners, array methods (`map`, `filter`, `reduce`), closures, promises, async/await, and `Fetch API`.
* **jQuery (6 Exercises)**: DOM traversal, event handling, AJAX integration, and animations.

---

### 🔸 [Module 2: ANSI SQL Using MySQL](file:///UpSkilling/Module%202)
A collection of **25 business intelligence and analytical SQL queries** executed on the `community_portal_db`:
* User upcoming event locators & active city metrics.
* Event feedback analytics, rating averages, and rating alerts.
* Session overlap & schedule conflict detection using self-joins.
* Multi-session speaker analytics and resource distribution reports.
* Trend analysis over 12-month rolling windows and feedback gap detection.

---

### 🔸 [Module 3: C# & ADO.NET Mastery](file:///UpSkilling/Module%203)
**30 in-depth hands-on exercises** covering modern C# language features and relational data access:
* **Core C#**: Value vs. Reference types, C# 12 Primary Constructors, `var` & target-typed `new()`, pattern matching `switch`.
* **OOP & Types**: Inheritance, abstract classes vs interfaces, method overloading, `ref`/`out`/`in` parameters, local functions, records with `init` and `with` expressions, C# 12 `required` modifier.
* **Collections & LINQ**: Generics, Dictionaries, complex LINQ queries (filtering, projection, aggregation).
* **Advanced C# & Async**: Multi-threading race conditions, `lock` synchronization, deadlock avoidance (`Monitor.TryEnter`), `async/await` file operations, JSON serialization (`System.Text.Json`), streams (`FileStream`, `MemoryStream`).
* **Security & Reliability**: Input sanitization, XSS mitigation, application tracing with `TraceSource`.
* **ADO.NET**: Connected model (`SqlConnection`, `SqlCommand`, `SqlDataReader`) and Disconnected model (`SqlDataAdapter`, `DataSet`, `DataTable`) CRUD implementations.

---

### 🔸 [Featured Project: Local Community Event Portal](file:///UpSkilling/Web-Development/Local-Community-Event-Portal)
An interactive, responsive single-page portal providing community event discovery, registration, and management:
* **Live Search & Category Filter**: Instant filtering of community events based on category and title.
* **Registration Engine with LocalStorage**: Client-side storage of registered events with input validation and feedback counters.
* **Geolocation & Media Integration**: Embedded interactive maps, event gallery, video showcases, and dynamic announcements.

---

## ⚡ Quick Start & Execution Guide

### Prerequisites
* [.NET 8.0 SDK](https://dotnet.microsoft.com/download/dotnet/8.0) or higher
* [Node.js (v18.x or v20.x)](https://nodejs.org/) & [Angular CLI (`npm install -g @angular/cli`)](https://angular.io/cli)
* [SQL Server Express / LocalDB](https://learn.microsoft.com/en-us/sql/database-engine/configure-windows/sql-server-express-localdb) or [MySQL Community Server](https://dev.mysql.com/downloads/mysql/)
* [Docker Desktop](https://www.docker.com/products/docker-desktop/) (for Week 7 container exercises)
* [Visual Studio 2022](https://visualstudio.microsoft.com/) / [VS Code](https://code.visualstudio.com/) with C# Dev Kit & Angular Language Service

---

### 1. Running .NET Web APIs & Console Projects

Navigate to any project directory under `DeepSkilling/` or `UpSkilling/Module 3/`:

```powershell
# Restore NuGet dependencies
dotnet restore

# Run the project
dotnet run
```

*For EF Core projects requiring migrations:*
```powershell
dotnet ef database update
dotnet run
```

*For Web API projects (Weeks 2 & 3):*
* Open browser at `https://localhost:<port>/swagger` to access interactive OpenAPI documentation.

---

### 2. Running the Angular Projects (Weeks 5 & 6)

Navigate to the Angular project directory (e.g., `DeepSkilling/WEEK 6/Angular Complete Project/student-course-portal`):

```bash
# Install NPM packages
npm install

# Start development server
ng serve
```

* Navigate to `http://localhost:4200/` in your browser.
* To run unit tests: `ng test`

---

### 3. Executing SQL Scripts (MySQL & SQL Server)

* For **MySQL** exercises (`UpSkilling/Module 2` & `UpSkilling/ANSI-SQL-MySQL-Exercises`):
  1. Open MySQL Workbench or CLI.
  2. Execute `schema.sql` (or `schema_and_data.sql`).
  3. Execute any query from `exercises.sql` or specific exercise subfolders.
* For **SQL Server** exercises (`DeepSkilling/WEEK 1/Advanced SQL`):
  1. Open SQL Server Management Studio (SSMS).
  2. Execute the `.sql` scripts against your target database.

---

## 👤 Author

**Kattamuri Sanjana Priya Darshini**
* **Degree:** B.Tech in Computer Science and Engineering
* **Institution:** Vignan's Foundation for Science, Technology and Research (Vignan University)
* **Program:** Cognizant Deep Skilling (DotNet & Angular Track)

---

## 📜 License & Acknowledgments

This repository is maintained for educational and training purposes under the **Cognizant Deep Skilling & UpSkilling Program**. All project code, architectures, and documentation are structured to demonstrate industry best practices in full-stack software engineering.
