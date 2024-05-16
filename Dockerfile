# 사용할 기본 이미지 지정
FROM openjdk:17
ARG JAR_FILE=build/libs/SpringBootNCPGradle-0.0.1-SNAPSHOT.jar
# 애플리케이션의 jar 파일을 이미지 내부로 복사
COPY ${JAR_FILE} app.jar
# 컨테이너가 시작될 때 실행할 명령어 지정
ENTRYPOINT ["java", "-jar", "app.jar"]