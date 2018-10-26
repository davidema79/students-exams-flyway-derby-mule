# Example Project students-exams-flyway-derby-mule
This project is an example on how to integrate Mule with Derby and Flyway.

The project is used as reference in the blog post [Mule, Derby and Flyway: empowering PoCs and Tests with Real Database](https://ricston.com/)

## How to Run
It needs Mule ESB 3.9.X *Enterprise Edition*. You can download **Anypoint Studio** from [here](https://www.mulesoft.com/lp/dl/studio/previous) by accepting a 60 days trial.

After installing and launching it, import the project as *Maven-based Mule Project*. Finally you execute the project. When he is successful deployed you can hit his endpoints. The following is a list of valid endpoints:


1. http://localhost:8080/api/students
1. http://localhost:8080/api/students/1
1. http://localhost:8080/api/students/1/exams
1. http://localhost:8080/api/professors
1. http://localhost:8080/api/professors/2
1. http://localhost:8080/api/professors/2/exams
1. http://localhost:8080/api/subjects/
1. http://localhost:8080/api/subjects/3
1. http://localhost:8080/api/subjects/3/exams


##
