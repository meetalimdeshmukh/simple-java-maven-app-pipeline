FROM ubuntu
RUN apt update -y
RUN apt install openjdk-8-jdk -y
RUN java -version
ADD target/*.jar .
CMD ["java", "-jar", "*.jar"]
