# **Software & DevOps Architecture in .NET**

# <sub> Powered by Selenium, CA Principles, Docker & GitHub Actions </sub>

## Engineered by [Luis René López](https://github.com/luislopez-dev)

## Introduction

<strong>This project focuses on high-level architecture.</strong> It is intended for educational and experimental purposes only.
Some patterns like dtos and isolated use cases have been omitted. I might continue to refine this project in future updates as time permits. If you need references on how to use DTOs, the mediator pattern and other patterns which are not included in this project feel free to review some of my other repos: 
* https://github.com/luislopez-dev/.Net-datingApp-web-api
* https://github.com/luislopez-dev/.NET-MEDIATOR-PATTERN-IMPL

## Business Logic

This project emulates an inventory and billing management system.

<img width="502" height="666" alt="Project (2)" src="https://github.com/user-attachments/assets/7d571773-cbdc-49f6-859c-76ea5c33af93" />

## Software architecture

<img width="502" height="666" alt="Project (2)" src="https://github.com/user-attachments/assets/94f83562-dd4e-4bc9-b52b-e6d430d5940b" />

### Domain

Contains the core business rules.

### Application

Defines the application services and coordinates communication between the presentation layer and the business logic.

### Infrastructure

Implements technical details such as data access and external services.

### Presentation

Contains the logic that handles user interaction.

## DevOps Architecture

The repository includes a CI pipeline built with GitHub Actions. This workflow automates test execution and verifies that every change meets the defined standards. The pipeline additionally containerizes the project with Docker and deploys the resulting image to Docker Hub.

<img width="902" height="666" alt="Project (2)" src="https://github.com/user-attachments/assets/f614ae39-3be4-493f-9483-d5f1c41de957" />

### Runtime Environment
The project uses Docker Compose 🐋 for consistent environment setup. This includes SQL Server support, enabling easy replication of realistic database environments for both development and testing.

## Testing
The solution follows a TDD workflow with unit and integration tests to ensure early code quality 🧪. Additionally, Selenium is used for end-to-end testing to verify critical user flows in a real browser.

<img width="602" height="666" alt="Project (2)" src="https://github.com/user-attachments/assets/47dd8961-4f26-4751-9292-8ba603f2b7ea" />

## YouTube Video
For a short demonstration, I recorded the following video:

[Watch on YouTube](https://youtu.be/0nfXpb7OsPA?si=28_t2m6mDIMfSiVw)

## Project created by [Luis López](https://github.com/luislopez-dev)
