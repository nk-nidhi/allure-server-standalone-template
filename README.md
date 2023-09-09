## allure-server-standalone-template

### Pre-requisites - 

- Java 11 or higher
- IDE - [IntelliJ](https://www.jetbrains.com/edu-products/download/#section=idea) or supporting IDE
- Maven
- [Docker](https://www.docker.com/products/docker-desktop/)

### Instructions - 

- Clone the Project Repository
```
git clone <repository-url - HTTPS / SSH>
```

- Open cloned Repository in IDE
- Build the Project 
```
mvn clean install
```

- Execute first set of Test cases
```
mvn clean test -Dtest=com.example.SetOfTwoTestCase 
```


- Open Docker Desktop and Terminal to pull Allure Server Image from Docker Hub
```
docker pull frankescobar/allure-docker-service
```

- Start Docker Container at port 5050 and mount generated allure-results
```
docker run -p 5050:5050 -e CHECK_RESULTS_EVERY_SECONDS=3 -e KEEP_HISTORY=1 \
-v <absolute_path_to_your_allure_results_directory>:/app/allure-results \
frankescobar/allure-docker-service
```

- Navigate to Allure service running at 5050 port to get the Report - <br>
  [http://localhost:5050/allure-docker-service/latest-report](http://localhost:5050/allure-docker-service/latest-report)
  ![Report with two Test Cases](./report-images/set_of_two_testcases_image.png)

- Execute second set of Test Cases
```
mvn clean test -Dtest=com.example.SetOfFourTestCase 
```

- Refresh this link to get the latest report - <br>
  [http://localhost:5050/allure-docker-service/latest-report](http://localhost:5050/allure-docker-service/latest-report) <br><br>
  ![Report with two Test Cases](./report-images/set_of_four_testcases_image.png)


