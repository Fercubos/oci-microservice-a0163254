FROM openjdk:17-jdk-slim
WORKDIR /oci-microservice-a01637254
COPY /target/*.jar oci-microservice-a01637254.jar
COPY /src/main/resources/Wallet_javadev /oci-microservice-a01637254/Wallet_javadev
ENV TNS_ADMIN=/oci-microservice-A01637254/Wallet_javadev
EXPOSE 8080
ENTRYPOINT [ "java", "-jar", "oci-microservice-a01637254.jar" ]