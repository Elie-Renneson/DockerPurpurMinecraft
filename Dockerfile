# Use an official OpenJDK image with Java 17
FROM openjdk

# Set the working directory
WORKDIR /minecraft-server

# Copy the Purpur server JAR to the container
COPY ./purpur.jar /minecraft-server/purpur.jar
COPY ./eula.txt /minecraft-server/eula.txt

# Create a volume for persistent data
VOLUME /minecraft-server/plugins

# Expose the Minecraft server port
EXPOSE 25565

# Start the Minecraft server
CMD ["java", "-Xmx2G", "-Xms2G", "-jar", "purpur.jar", "--nogui"]
