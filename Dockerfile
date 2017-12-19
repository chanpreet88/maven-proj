FROM java:8
EXPOSE 8080
ADD my-app/my-app-1.0-SNAPSHOT.jar demo.jar
ENTRYPOINT ["java","-jar","demo.jar"]
