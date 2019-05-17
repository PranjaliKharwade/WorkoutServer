# Start with the base image containing Java runtime
#FROM openjdk:8
FROM workoutServer:0.0.1-SNAPSHOT
# Add a volume pointing to /tmp
VOLUME /tmp
# Make port 8081 available to the world outside this container
EXPOSE 8090
# The application's jar file
ARG JAR_FILE=target/Workout-0.0.1-snapshot.jar
# Add the application's jar to the container
ADD "target/Workout-0.0.1-snapshot.jar" "/var/lib/jenkins/workspace/Test_Job/test"
#  Run the jar file
ENTRYPOINT ["java","-jar","Workout-0.0.1-snapshot.jar"]
