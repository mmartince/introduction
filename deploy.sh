#!/bin/sh 
cd /home/matej/matej/introduction 
echo "Building React Project …"
npm run build 
echo "Copying html file …"
cp -r build html 
echo "Connecting to AWS VM and copying file to /var/www/html/ …"
sudo scp -i scp -i /home/matej/personal-machine-kp.pem -r html ec2-user@ec2-18-192-13-193.eu-central-1.compute.amazonaws.com:.
echo "Removing html file from local directory …"
rm -r html