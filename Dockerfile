FROM krmp-d2hub-idock.9rum.cc/goorm/gradle:7.3.1-jdk17

WORKDIR /app

COPY . .

RUN ./gradlew build -x test
#RUN gradle build -x test

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "build/libs/demo-0.0.1-SNAPSHOT.jar"]