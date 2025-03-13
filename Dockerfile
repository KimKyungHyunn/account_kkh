# 베이스 이미지 설정 (JDK 21 사용 예시)
# FROM eclipse-temurin:21-jdk
FROM k8s-vga-worker1:5000/openjdk:21-jdk-slim

# 작업 디렉터리 설정
ARG JAR_FILE=target/accounts.jar

# JAR 파일 복사
COPY ${JAR_FILE} accounts.jar

# 실행 명령어 설정
ENTRYPOINT ["java", "-jar", "accounts.jar"]
