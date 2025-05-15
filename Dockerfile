FROM ubuntu:22.04

RUN apt-get update && apt-get install -y curl unzip openjdk-17-jre-headless

WORKDIR /playit

# Descargar Playit
RUN curl -LO https://playit.gg/downloads/playit-linux.zip && unzip playit-linux.zip && chmod +x playit

# Descargar servidor Minecraft Paper
RUN curl -o paper.jar https://api.papermc.io/v2/projects/paper/versions/1.20.1/builds/103/downloads/paper-1.20.1-103.jar

# Aceptar EULA
RUN echo "eula=true" > eula.txt

EXPOSE 25565

CMD ["./playit", "--no-daemon"]
