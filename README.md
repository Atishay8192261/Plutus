# Plutus

Plutus is a credit/debit card rewards discovery platform that enables users to identify and maximize cashback and promotional offers linked to their specific cards. It features a responsive and intuitive interface built with React.js, backed by a robust Spring Boot API and a PostgreSQL database for real-time deal handling and secure credential management.

## Features

- 🧾 Discover real-time cashback, discount, and loyalty offers based on your linked card (Visa, Mastercard, etc.)
- ⚙️ Backend architecture optimized using Spring Boot, with support for scalable API requests and efficient data access.
- 🧠 Leveraged Aspect-Oriented Programming (AOP) to modularize logging, exception handling, and system-wide concerns.
- 🚀 Fast MySQL/PostgreSQL queries with indexing and Redis-based caching for high-concurrency usage.
- 🔐 Secured financial credentials and tokens with environment variable handling and OAuth2 practices.
- 📦 CI pipeline built with Maven and GitHub Actions to ensure rapid build and deployment.

## Project Structure

The repository is organized into multiple branches:

- **Main Branch:** Documentation artifacts such as:
  - Project presentation
  - Database schema and data scripts
  - README

- **Backend-Development Branch:**  
  Java 17 backend code using Spring Boot framework.

- **Frontend-Development Branch:**  
  React.js frontend built with responsive components and intuitive UI patterns.

## Setup Instructions

### 1. Database Setup

1. Download the `plutus_db.sql` and `plutus_data.sql` files.
2. Create a MySQL database instance.
3. Run `plutus_db.sql` to initialize the schema and tables.
4. Run `plutus_data.sql` to insert sample data.

### 2. Backend Setup

1. Clone the `backend-development` branch.
2. Ensure you have **JDK 17** and **Maven** installed.
3. Import the project into your IDE (e.g., IntelliJ).
4. Set the environment variable `DB_PASSWORD` to your MySQL instance password.
5. Install Maven dependencies and run the Spring Boot application.

### 3. Frontend Setup

1. Clone the `frontend-development` branch.
2. Open terminal inside the project folder.
3. Run `npm install` to install dependencies.
4. Start the development server with `npm run`.

Once both servers are running, navigate to `http://localhost:3000` and sign up to explore personalized discounts and cashback opportunities.

## License

This project is released for personal use, research, and development. Commercial usage is not permitted without prior consent.

