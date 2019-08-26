FROM ubuntu
RUN apt update -y
RUN apt install openjdk-8-jdk -y
RUN java -version
ADD target/${NAME}-${VERSION}.jar .
CMD ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]
