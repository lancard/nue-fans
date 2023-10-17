wget https://github.com/lancard/tile-server/archive/refs/heads/master.zip -O tiles.zip
unzip tiles.zip
rm -rf fans/tiles
mv tile-server-master/korea-openstreetmap-tiles fans/tiles
rm -rf tile-server-master tiles.zip

wget -O fans/database/procedure.json https://raw.githubusercontent.com/lancard/korea-flight-database/master/database/procedure.json
wget -O fans/database/navaid.json https://raw.githubusercontent.com/lancard/korea-flight-database/master/database/navaid.json

git add .
git commit -m "update tiles"
git push
