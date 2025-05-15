# Usa una imagen base de Ubuntu
FROM ubuntu:latest

# Actualiza los repositorios e instala OpenJDK 21
RUN apt-get update && \
    apt-get install -y openjdk-21-jdk

# Establece la variable JAVA_HOME
ENV JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64
ENV PATH="${JAVA_HOME}/bin:${PATH}"

# Verifica que la instalación de Java sea exitosa
RUN java -version
