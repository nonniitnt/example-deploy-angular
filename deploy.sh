# ~/deploy.sh

cd ~/devsart
git reset --hard
git clean -fd
git pull origin master
docker build . -t devsart --no-cache
docker-compose down && docker-compose up -d
docker system prune -f
