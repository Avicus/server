#!/bin/bash

# Pull in plugins
curl -LJo plugins/grave.jar https://github.com/Avicus/Grave/releases/download/1.8/grave-1.8-SNAPSHOT.jar
curl -LJo plugins/compendium.jar https://github.com/Avicus/Compendium/releases/download/1.1/compendium-bukkit-1.1-SNAPSHOT.jar
curl -LJo plugins/tracker.jar https://github.com/Avicus/Tracker/releases/download/1.8/tracker-1.8-SNAPSHOT.jar
curl -LJo plugins/atlas.jar https://github.com/Avicus/Atlas/releases/download/2.0.0/atlas-core-2.0.0.jar

# Sets
mkdir -p plugins/Atlas/all-module-sets
curl -LJo plugins/Atlas/all-module-sets/arcade.jar https://github.com/Avicus/Atlas/releases/download/2.0.0/atlas-arcade-2.0.0.jar
curl -LJo plugins/Atlas/all-module-sets/comp-objectives.jar https://github.com/Avicus/Atlas/releases/download/2.0.0/atlas-competitive-objectives-2.0.0.jar
curl -LJo plugins/Atlas/all-module-sets/generator.jar https://github.com/Avicus/Atlas/releases/download/2.0.0/atlas-docs-generator-2.0.0.jar
curl -LJo plugins/Atlas/all-module-sets/walls.jar https://github.com/Avicus/Atlas/releases/download/2.0.0/atlas-walls-2.0.0.jar

# Pull in server
curl -LJo magnet.jar https://github.com/Avicus/Magnet/releases/download/1.8.8/magnet-1.8.8-R0.1-SNAPSHOT.jar

# Run the server
java  -Xms1G -Xmx3G -jar magnet.jar
sleep 5
./run.sh
