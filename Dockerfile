FROM openjdk:11-jre
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
COPY java_programming.jar javaprogramming.jar
EXPOSE 3000
ENTRYPOINT exec java $JAVA_OPTS -jar javaprogramming.jar
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar javaprogramming.jar
