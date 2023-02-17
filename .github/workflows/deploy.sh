echo "Download nvm"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash . ~/.nvm/nvm.sh

echo "Install nvm"
nvm install 18

echo "Install globally pm2"
npm install -g pm2

echo "Jump to app folder"
cd ~/nestjs-aws

echo "Pull projct from repository"
git pull origin main

echo "Install app dependencies"
# npm install --only=production
rm -rf node_modules package-lock.json
npm install

echo "Build your app"
npm run build

echo "Run new PM2 action"
# pm2 restart api
pm2 start dist/main.js --name nestjs-aws
