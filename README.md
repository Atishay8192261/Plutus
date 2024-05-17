# Plutus

It is an application automate the process of identifying and notifying users about relevant cashback offers, integrated with their financial credentials. Application features a responsive, intuitive React-based interface for seamless user interaction. A robust backend utilizes Spring Boot for real-time data handling and notifications.

## GitHub Structure
This project is divided among 3 branches:  
**Master Branch**: This branch contains following project files:
1. Powerpoint presentation
2. Video presentation
3. Database schema file
4. Database SQL file (plutus_db.sql)
5. Database data file (plutus_data.sql)
6. ReadMe file

**Backend-Development Branch**: This branch contains back-end part of application. It is developed in Java using SpringBoot.
**Frontend-Development Branch**: This branch contains front-end part of application. It is developed in JavaScript using ReactJs.

## How to setup the application:
Please follow the following steps in order:
### Database setup:
1. Download plutus_db.sql and plutus_data.sql file.
2. Create a MYSQL Database instance. Remember the password you set up! You will need it later.
3. Use the script plutus_db.sql to create database schema, and relations (tables)
4. Use the script plutus_data.sql to have data inserted into the tables.

### Backend setup:
1. Clone `backend-development` branch of this repository.
2. This applications is developed in Java 17 environment. Make sure your machine consists of JDK 17.
3. Setup IDE (like IntelliJ) and open the current project in IDE.
4. Install the Maven dependencies the way your IDE does it.
5. Setup DB_PASSWORD environment variable with your specific database instance's (the one you set up on your machine with mySQL bench, mariadb or similar) password so that application can connect to database instance. Do so in your Run Configuration by adding an environment variable as so: </br>
DB_PASSWORD=your_password </br>
where "your_password" is the password that you set up for your mySQL instance when you downloaded it.
6. Instatiate the Springboot application using the Run button on your IDE.

### Frontend setup:
1. Clone `front-end` branch of this repository.
2. Open command prompt to the folder that the repo is cloned in and type `npm install` to initiate the project
3. Type `npm run` to start the application

Once both the frontend and backend are up running, navigate to localhost:3000 on your browser and interact with the application. Start by creating an account!
