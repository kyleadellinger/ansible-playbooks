#!/bin/bash
# copy items into home directory
cp /home/ubuntu/pass/appenv.sh ~ && sudo chmod +x appenv.sh;
cp /home/ubuntu/pass/shell/curlCLI.sh ~ && sudo chmod +x curlCLI.sh;
cp /home/ubuntu/pass/shell/curlUA.sh ~ && sudo chmod +x curlUA.sh;
sudo chmod +x /home/ubuntu/mend;
echo "PATH='/home/ubuntu/mend:$PATH'" >> ~/.bashrc && source .bashrc;
