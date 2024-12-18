#pull a base image which gives all required tools and libraries
FROM openjdk:17-jdk-alpine
#craete a folder where the app code will be stored
WORKDIR /app
#Copy the source code from your host machineto your contaienr
COPY src/Main.java /app/Main.java
#Complie the java application code
RUN javac Main.java
#run the application
CMD ["java", "Main"]

