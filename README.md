# Students Exams Flyway Derby Mule

Table of Contents
=================
1. [Introduction](#introduction)
1. [Disclaimer](#disclaimer)
1. [Project Description](#project-description)
   1. [Common Structure](#common-structure)
   1. [Main Branch](#main-branch)
   1. [Test Branch](#test-branch)
1. [How to Run](#how-to-run)


## Introduction

This project is a working example for the blog post in [Mule, Derby and Flyway:
Embedded Database for PoC and Tests](https://www.ricston.com/blog/mule-derby-flyway-embedded-database-cicd).

## Disclaimer

The `master` branch is empty on purpose, however there are two `develop` branches
named `develop-main` and `develop-test` in which are shown the use of [Apache Derby](https://db.apache.org/derby/) and
[Flyway](https://flywaydb.org/) respectively when the embedded database is used for a PoC and when it used during the Test phase.

Please refer to the blog post above said for a better understanding of the scope of this project.

## Project Description

In both branches the project structure is the same.
This is a REST API Project implements a very simplified API that exposes university info about the students, the subjects, the professors and the exams. It **does not aim** to give you a full-featured API, but just an example about the usage of embedded Database and a simple way to create and populate it.

### Common Structure
It is a normal Mule project based on Maven, and use Api-Kit.
1. `src/main/api` package in which the API definition is contained
1. `src/main/app` package in which the flow files are contained:
   * `api.xml` the entry-point;
   * `students.xml` that contains all the flows related to the students;
   * `professors.xml` that contains all the flows related to the students;
   * `subjects.xml` that contains all the flows related to the students;
   * `global-config.xml` that contains the application configuration
   * `global-error-handler.xml` that contains the error handling flow.

### Main Branch
In `develop-main` you can find also the migration files used by [Flyway](https://flywaydb.org/) when the application is deployed. The files are under the folder `src/main/resources/db/migration`.

### Test Branch
In the `develop-test` branch there are also the following packages:
1. `src/test/munit` that contains the tests-suite
1. `src/test/munit/config` that contains the application configuration to use during the test phase.
1. `src/test/resources/db/migration` that contains the files used by [Flyway](https://flywaydb.org/) when ***MUnit*** starts the application.


## How to Run
It needs Mule ESB 3.9.X *Enterprise Edition*. You can download **Anypoint Studio** from [here](https://www.mulesoft.com/lp/dl/studio/previous) by accepting the 60 days trial.

After installing and launching it, import the project as *Maven-based Mule Project*, and switch the local git repository to `develop-main`. Finally you execute the project. When it is successfully deployed you can hit its endpoints. The following is a list of valid endpoints:

1. http://localhost:8080/api/students
1. http://localhost:8080/api/students/1
1. http://localhost:8080/api/students/1/exams
1. http://localhost:8080/api/professors
1. http://localhost:8080/api/professors/2
1. http://localhost:8080/api/professors/2/exams
1. http://localhost:8080/api/subjects/
1. http://localhost:8080/api/subjects/3
1. http://localhost:8080/api/subjects/3/exams

If you want to see the tests-running, please switch the local git repository to `develop-test` and from *Anypoint Studio* run the *MUnit* tests.
