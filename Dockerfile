FROM krmp-d2hub-idock.9rum.cc/dev-test/repo_758ace256364

WORKDIR /app

COPY . .

RUN ./gradlew build -x test

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "build/libs/demo-0.0.1-SNAPSHOT.jar"]