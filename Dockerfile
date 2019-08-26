FROM ubuntu
RUN apt update -y
RUN apt install openjdk-8-jdk -y
RUN java -version
ADD my-app-1.0-SNAPSHOT.jar .
CMD ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]
