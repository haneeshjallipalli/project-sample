FROM openjdk:17
COPY target/sample-v1.jar  sample.jar
EXPOSE 8080
ENTRYPOINT [ "java", "-jar" , "sample.jar" ]