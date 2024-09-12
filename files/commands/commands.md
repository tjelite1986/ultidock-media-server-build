Commands for Ubuntu

### Ubuntu
sudo chmod u+x ./script.sh
sudo chmod -R /dir/name
lsblk -f
sudo nano /etc/fstab
sudo systemctl daemon-reload
sudo mount -a 
touch Dockerfile
sudo usermod -aG docker $USER
sudo systemctl restart [name].service

### Github
git add .
git commit -m "add in README.md"
git remote
git push origin master

### Docker
docker exec -t -i [ID] /bin/sh 
docker-compose run --rm plextraktsync sync 
docker exec -it [x]
docker network ls 
docker inspect [x]
docker system prune -a --volumes
docker-compose down
docker system prune -a --volumes --force
docker stop $(docker ps -a -q)