sudo dnf install -y git curl wge
sudo dnf install -y git curl wget
curl -fsSL https://rpm.nodesource.com/setup_20.x | sudo bash -
sudo dnf install -y nodejs
node -v
npm -v
sudo mkdir -p /var/www/society-app
sudo chown $USER:$USER /var/www/society-app
ne https://github.com/riteshpatidar08/Society-management-System.git
/var/www/society-app
git clone https://github.com/riteshpatidar08/Society-management-System.git
/var/www/society-app
ls
rm -rf Society-management-System
cd /var/www/society-app
git clone https://github.com/riteshpatidar08/Society-management-System.git
ls
cd Society-management-System
ls
rm -rf client
cd server
ls
vim app.js
yum install -y vim
hostnamectl set-hostname server
sudo -i
ls
ls 
cd /var/www/society-app/
ls
cd Society-management-System
ls
ls server
vim app.js
ls
ls server
cd server
clear
vim app.js
ls
ls lib
cd lib
vim cloudinary.js
cd ../
ls
vim .env
node -e "console.log(require('crypto').randomBytes(64).toString('hex'))"
vim .env
cd /var/www/society-app/
cd Society-management-System/
cd server
vim lib/cloudinary.js 
sudo npm install -g pm2
pm2 start app.js --name society-backend

pm2 save
pm2 logs society-backend 
vim .env
pm2 logs society-backend
vim .env
pm2 logs society-backend
vim .env
cat cloudinary.js
cat lib/cloudinary.js
pm2 logs society-backend
vim .env
pm2 logs society-backend
vim .env
pm2 logs society-backend
vim .env
pm2 logs society-backend
vim .env
pm2 logs society-backend
pm2 stop 
pm2 stop society-backend
pm2 start app.js --name society-backend

vim .env
cat lib/cloudinary.js
cd lib/cloudinary.js 
vim lib/cloudinary.js 
cd Society-management-System
cd /var/www/society-app/
cd Society-management-System/
cd server
clear
vim .env
npm install @aws-sdk/client-s3
cd /var/www/society-app/Society-management-System/client
cd /var/www/society-app/Society-management-System/server
ls
vim .env
pm2 logs
 curl -v http://INTERNAL-ALB-422117892.ap-southeast-2.elb.amazonaws.com:3000/
cd /var/www/society-app/Society-management-System/server
mkdir -p seed.js
rm -rf seed.js
vim seed.js
 node seed.js
pm2 status
pm2 logs society-backend --lines 30
sudo netstat -tulpn | grep 9790
# sudo dnf install -y net-tools
 sudo dnf install -y net-tools
sudo netstat -tulpn | grep 9790
sudo nginx -t
sudo dnf remove -y net-tools
ls
cat index.js
pm2 logs --lines 100
ls
cat app.js
vim app.js
cat routes/auth.routes.js
curl -i http://127.0.0.1:3000/health
cat controllers/auth.controller.js
cat lib/hashPassword.js
cat lib/generatePassword.js
cat model/user.model.js
curl -i -X POST http://127.0.0.1:3000/api/v1/auth/login -H "Content-Type: application/json" -d '{"email":"EMAIL_HERE","password":"PASSWORD_HERE"}'
-d '{"email":"vibhanshi09@gmail.com","password":"PNDbDU8gF"}'
vim lib/generatePassword.js
pm2 restart all
curl -i -X POST http://127.0.0.1:3000/api/v1/auth/login -H "Content-Type: application/json" -d '{"email":"vibhanshi09@gmail.com","password":"PNDbDU8gf"}'
console.log(password, user.password);
console.log(isPassword);\
console.log(password, user.password);
console.log(isPassword);
clear
pm2 logs
cd /var/www/society-app/Society-management-System/server
ls
vim controllers/auth.controller.js
vim app.js
ls
pm2 restart all
curl -I http://localhost:3000/
pm2 status
pm2 logs society-backend --lines 20
vim controllers/authController.js
ls
vim controllers/auth.controller.js 
pm2 restart society-backend
pm2 logs society-backend --lines 10
vim controllers/auth.controller.js 
pm2 restart society-backend
pm2 logs society-backend --lines 10
cd /var/www/society-app/Society-management-System
find . -iname "*user*.js"
cd server
vim controllers/auth.controller.js 
pm2 restart society-backend
pm2 logs society-backend --lines 10
pm2 flush
pm2 restart society-backend
pm2 logs society-backend --lines 20
npm install bcryptjs
pm2 restart society-backend
pm2 logs society-backend --lines 15
vim app.js
pm2 logs society-backend --lines 15
pm2 flush
pm2 restart society-backend
pm2 logs society-backend --lines 15
vim app.js
pm2 restart society-backend
pm2 logs society-backend --lines 15
pm2 flush
pm2 restart society-backend
pm2 logs society-backend --lines 15
curl -I http://localhost:3000/health
pm2 save
vim app.js
pm2 restart society-backend
pm2 save
ls
vim .env
pwd
cd /var/www/society-app/
ls
cd Society-management-System/
ls
history 
ip a s
pm2 status
curl -v https://www.vibhanshi.store/api/v1
cat server/app.js 
history 
pm2 restart society-backend
cd server/
ls
cat controllers/auth.controller.js 
ls
vim routes/auth.routes.js 
exit 
cd /var/www/society-app/Society-management-System/server/
cat .env 
cat app.js 
cat lib/cloudinary.js 
ls
cat controllers/auth.controller.js 
ls
vim lib/sendMail.js
vim controllers/auth.controller.js 
cat .env 
pm2 restart society-backend
 find / -name auth.routes.js
cat routes/auth.routes.js
pm2 list
pm2 logs society-backend --lines 30
cat /middleware/verifyToken.js
cat middleware/verifyToken.js
grep -n "JWT_SECRET" controllers/auth.controller.js
sed -i "s/process.env.JWT_SECRET || 'fallback_secret'/process.env.JWT_SECRET_STRING/g" controllers/auth.controller.js
grep -n "JWT_SECRET" controllers/auth.controller.js
node -e "console.log(require('crypto').randomBytes(64).toString('hex'))" 
vim .env 
pm2 restart society-backend
pm2 logs society-backend --lines 0
mongosh "mongodb+srv://vibhanshi2023cse_db_user:techno123@cluster0.lpxk8fa.mongodb.net/society-app"
yum whatprovides  mongosh
exit
cd /var/www/society-app/Society-management-System/server
rm -rf .env
pm2 stop society-backend
cd var/www/society-app
cd /var/www/society-app/Society-management-System/server
sed -i "s/route.post('\/verify' , verifyToken , checkRole(\['admin' , 'resident'\]), verify)/route.post('\/verify' , verifyToken , verify)/" /var/www/society-app/Society-management-System/server/routes/auth.routes.js
cat auth.routes.js
cat routes/auth.routes.js
pm2 restart society-backend
curl -X POST http://localhost:3000/api/auth/login   -H "Content-Type: application/json"   -d '{"email":"vibhanshi09@gmail.com","password":"yourpassword"}'
curl -X POST http://localhost:3000/api/auth/login   -H "Content-Type: application/json"   -d '{"email":"vibhanshi09@gmail.com","password":"PNDbDU8gF"}'
mongosh "$MONGODB_URI" --eval "db.users.findOne({email:'vibhanshi09@gmail.com'}, {otp:1, otpExpires:1})"
curl -X POST http://localhost:3000/api/auth/verifyotp   -H "Content-Type: application/json"   -c cookies.txt   -d '{"email":"vibhanshi09@gmail.com","otp":"553282"}'
curl -X POST http://localhost:3000/api/auth/verify   -H "Content-Type: application/json"   -b cookies.txt
