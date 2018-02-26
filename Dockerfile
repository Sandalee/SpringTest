FROM maven
ADD SpringHelloworld-0.0.1-SNAPSHOT.jar /

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/SpringHelloworld-0.0.1-SNAPSHOT.jar"]
