# Design Principles and Patterns - notes.md

# Module 1: Design Patterns and Principles

## Overview

Design Principles and Design Patterns help developers build software that is:

- Maintainable
- Reusable
- Scalable
- Flexible
- Easy to modify

This module focuses on:

1. SOLID Principles
2. Creational Design Patterns
3. Structural Design Patterns
4. Behavioral Design Patterns
5. Architectural Patterns

---

# Learning Objectives

After completing this module, you should be able to:

- Apply SOLID principles in software design.
- Reduce code duplication.
- Increase code reusability.
- Choose appropriate design patterns.
- Solve common software design problems.
- Build scalable and maintainable applications.

---

# SOLID Principles

## S - Single Responsibility Principle (SRP)

### Definition

A class should have only one reason to change.

### Example

Bad:

```java
class Employee {
    void calculateSalary(){}
    void saveToDatabase(){}
    void generateReport(){}
}
```

Good:

```java
class Employee {}

class SalaryCalculator {}

class EmployeeRepository {}

class ReportGenerator {}
```

### Benefits

- Easier maintenance
- Better readability
- Reduced coupling

---

## O - Open Closed Principle (OCP)

### Definition

Software entities should be open for extension but closed for modification.

### Example

Instead of modifying existing code:

```java
abstract class Shape {
    abstract double area();
}
```

Create new subclasses whenever new requirements arise.

### Benefits

- Easy feature addition
- Safer code changes

---

## L - Liskov Substitution Principle (LSP)

### Definition

Derived classes must be replaceable for their base classes without changing program correctness.

### Example

A child class should not break parent class behavior.

### Benefits

- Reliable inheritance
- Better polymorphism

---

## I - Interface Segregation Principle (ISP)

### Definition

Clients should not depend on methods they don't use.

### Example

Bad:

```java
interface Worker {
    void work();
    void eat();
}
```

Good:

```java
interface Workable {
    void work();
}

interface Eatable {
    void eat();
}
```

### Benefits

- Small focused interfaces
- Better maintainability

---

## D - Dependency Inversion Principle (DIP)

### Definition

Depend on abstractions rather than concrete implementations.

### Example

```java
interface Keyboard {}

class WiredKeyboard implements Keyboard {}

class Computer {
    private Keyboard keyboard;

    Computer(Keyboard keyboard){
        this.keyboard = keyboard;
    }
}
```

### Benefits

- Loose coupling
- Easier testing
- Better scalability

---

# Design Patterns

## What is a Design Pattern?

A reusable solution to a recurring software design problem.

### Categories

1. Creational Patterns
2. Structural Patterns
3. Behavioral Patterns

---

# CREATIONAL PATTERNS

Creational patterns focus on object creation.

---

# Exercise 1: Singleton Pattern ⭐ IMPORTANT

## Scenario

A logging utility should have only ONE instance throughout the application lifecycle.

## Definition

Singleton Pattern ensures:

- Only one object exists
- Global access point is available
- Same instance is reused everywhere

## Structure

```java
class Logger {

    private static Logger instance;

    private Logger() {}

    public static Logger getInstance() {

        if(instance == null) {
            instance = new Logger();
        }

        return instance;
    }
}
```

## Why Singleton Here?

Logging should be centralized.

Problems if multiple logger objects exist:

- Duplicate logs
- Inconsistent logging
- Higher memory usage

## Mandatory Exercise Requirements

### Create Project

```text
SingletonPatternExample
```

### Create Logger Class

Requirements:

- private static instance
- private constructor
- public static getInstance()

### Test Class

```java
public class Test {

    public static void main(String[] args) {

        Logger log1 = Logger.getInstance();
        Logger log2 = Logger.getInstance();

        System.out.println(log1 == log2);
    }
}
```

Output:

```text
true
```

## Interview Question

Why constructor is private?

Answer:
To prevent external object creation using new keyword.

---

# Exercise 2: Factory Method Pattern ⭐ IMPORTANT

## Scenario

A Document Management System must create:

- Word Documents
- PDF Documents
- Excel Documents

without exposing creation logic.

## Definition

Factory Method Pattern creates objects through a factory instead of directly using new.

## Structure

### Product Interface

```java
interface Document {
    void open();
}
```

### Concrete Products

```java
class WordDocument implements Document {
    public void open() {
        System.out.println("Opening Word Document");
    }
}

class PdfDocument implements Document {
    public void open() {
        System.out.println("Opening PDF Document");
    }
}
```

### Factory

```java
abstract class DocumentFactory {

    abstract Document createDocument();
}
```

### Concrete Factories

```java
class WordFactory extends DocumentFactory {

    Document createDocument() {
        return new WordDocument();
    }
}

class PdfFactory extends DocumentFactory {

    Document createDocument() {
        return new PdfDocument();
    }
}
```

### Client

```java
public class Test {

    public static void main(String[] args) {

        DocumentFactory factory =
                new WordFactory();

        Document doc =
                factory.createDocument();

        doc.open();
    }
}
```

## Benefits

- Loose coupling
- Easy extension
- Better maintainability

## Mandatory Exercise Requirements

### Create Project

```text
FactoryMethodPatternExample
```

### Implement

1. Document Interface
2. WordDocument
3. PdfDocument
4. ExcelDocument
5. Abstract Factory
6. Concrete Factories
7. Test Class

## Interview Question

Why use Factory Pattern?

Answer:
To separate object creation logic from business logic.

---

# Builder Pattern

## Purpose

Build complex objects step-by-step.

### Exercise 3 Scenario

Create Computer objects with:

- CPU
- RAM
- Storage

### Benefits

- Readability
- Flexible object creation

---

# STRUCTURAL PATTERNS

Structural patterns deal with object composition.

---

# Adapter Pattern

### Exercise 4 Scenario

Integrate multiple payment gateways with different APIs.

### Purpose

Convert one interface into another expected interface.

### Real-Life Example

Power Plug Adapter

---

# Decorator Pattern

### Exercise 5 Scenario

Notification System:

- Email
- SMS
- Slack

### Purpose

Add functionality dynamically.

### Real-Life Example

Pizza + Cheese + Extra Toppings

---

# Proxy Pattern

### Exercise 6 Scenario

Image Viewer Application

### Purpose

Add lazy loading and caching.

### Benefits

- Better performance
- Access control

---

# BEHAVIORAL PATTERNS

Behavioral patterns manage communication between objects.

---

# Observer Pattern

### Exercise 7 Scenario

Stock Market Monitoring System

### Components

- Subject
- Observer
- Concrete Observer

### Example

YouTube Notifications

---

# Strategy Pattern

### Exercise 8 Scenario

Payment System

- Credit Card
- PayPal

### Purpose

Select algorithms at runtime.

---

# Command Pattern

### Exercise 9 Scenario

Home Automation System

### Components

- Command
- Receiver
- Invoker

### Example

Remote Control → Light ON/OFF

---

# ARCHITECTURAL PATTERNS

---

# MVC Pattern

### Exercise 10 Scenario

Student Management Application

### Components

#### Model

Stores data.

#### View

Displays data.

#### Controller

Handles user interaction.

### Flow

```text
User
 ↓
Controller
 ↓
Model
 ↓
View
```

---

# Dependency Injection (DI)

### Exercise 11 Scenario

Customer Management Application

### Purpose

Inject dependencies instead of creating them internally.

### Constructor Injection

```java
class CustomerService {

    private CustomerRepository repository;

    public CustomerService(
        CustomerRepository repository) {

        this.repository = repository;
    }
}
```

### Benefits

- Loose coupling
- Easier testing
- Better scalability

---

# Quick Revision Table

| Pattern              | Category      | Purpose                     |
| -------------------- | ------------- | --------------------------- |
| Singleton            | Creational    | Single instance             |
| Factory Method       | Creational    | Object creation             |
| Builder              | Creational    | Complex object construction |
| Adapter              | Structural    | Interface conversion        |
| Decorator            | Structural    | Add functionality           |
| Proxy                | Structural    | Control access              |
| Observer             | Behavioral    | Event notification          |
| Strategy             | Behavioral    | Select algorithm            |
| Command              | Behavioral    | Encapsulate request         |
| MVC                  | Architectural | Separate concerns           |
| Dependency Injection | Architectural | Manage dependencies         |

---
