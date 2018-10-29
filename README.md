# Students Exams Flyway Derby Mule
Table of Contents
=================
1. [Introduction](#introduction)
1. [Disclaimer](#disclaimer)
1. [Project Description](#project-description)
   1. [Structure](#structure)


## Introduction

This project is a working example for the blog post in [Mule, Derby and Flyway:
Embedded Database for PoC and Tests](https://www.ricston.com/blog/mule-derby-flyway-embedded-database-cicd).

## Disclaimer

The `master` branch is empty on purpose, however there are two `develop` branches
named `develop-main` and `develop-test` in which are shown the use of [Apache Derby](https://db.apache.org/derby/) and
[Flyway](https://flywaydb.org/) respectively when the embedded database is used for a PoC and when it used during the Test phase.

Please refer the respective branches for further details, and the blog post above said for a better understanding of the scope of the project.

## Project Description

In both branches the project structure is the same.
This is a REST API Project implements a very simplified API that exposes university info about the students, the subjects, the professors and the exams. It **does not aim** to give you a full-featured API, but just an example about the usage of embedded Database and a simple way to create and populate it.

### Structure
It is a normal Mule project based on Maven, and use Api-Kit. In particular it contains:
1. `src/main/api` package in which the API definition is contained
1. `src/main/app` package in which the flow files are contained:
   * `api.xml` the entry-point;
   * `students.xml` that contains all the flows related to the students;
   * `professors.xml` that contains all the flows related to the students;
   * `subjects.xml` that contains all the flows related to the students;
   * `global-config.xml` that contains the application configuration
   * `global-error-handler.xml` that contains the error handling flow.

In the `develop-test` branch there are also the following packages:
1. `src/test/munit` that contains the tests-suite
1. `src/test/munit/config` that contains the application configuration to use during the test phase.
