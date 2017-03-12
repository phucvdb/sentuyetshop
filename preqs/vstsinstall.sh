#!bin/sh

sudo apt-get install -y libunwind8 libcurl3 -y
sudo apt-add-repository ppa:git-core/ppa -y
sudo apt-get update -y
sudo apt-get install git -y

wget https://github.com/Microsoft/vsts-agent/releases/download/v2.111.1/vsts-agent-ubuntu.16.04-x64-2.111.1.tar.gz
mkdir myagent && cd myagent
tar zxvf ../vsts-agent-ubuntu.16.04-x64-2.111.1.tar.gz

./config.sh --unattended --acceptteeeula --url https://philipvan.visualstudio.com --auth PAT --token $tokenvsts --pool default --agent $dockerbuid
unset tokenvsts
unset dockerbuid
sudo ./svc.sh install
sudo ./svc.sh start
