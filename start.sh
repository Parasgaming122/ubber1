#!/bin/sh
if test ! -e spigot-1.8.8-R0.1-SNAPSHOT-latest.jar
then wget https://cdn.getbukkit.org/spigot/spigot-1.8.8-R0.1-SNAPSHOT-latest.jar
fi
if test ! -e eula.txt
then echo "eula=true" > eula.txt
fi
ssh -o StrictHostKeyChecking=no -R $RANDOM:localhost:25565 serveo.net &
echo "Starting Minecraft server… will take a while; please wait."
java -Xms6G -Xmx6G -XX:+UseG1GC -jar spigot-1.8.8-R0.1-SNAPSHOT-latest.jar nogui
