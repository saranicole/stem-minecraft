Playbook Name
=========
stem-minecraft

Description
------------
Provisions an Ubuntu 14.04 Docker droplet on Digital Ocean, then pulls down the Minecraft Server Docker image from the most excellent minecraft-server from itzg and runs the container.  At the end it prints out a debug statement with your IP and voila! - you can connect to it using a Minecraft client.

Note that in order to use Digital Ocean, you will first have to create an account and give your payment info.  Servers left up and running will cost you money!

Credit to itzg, Docker image https://hub.docker.com/r/itzg/minecraft-server/

Minecraft
http://www.minecraft.net

Digital Ocean
https://cloud.digitalocean.com

Created for DevOps Days Boston http://www.devopsdays.org/events/2016-boston/program/sara-jarjoura/
Background at http://sarastreeter.com/2016/05/19/zero-to-devops-thru-minecraft/

Requirements
------------

Install the requirements from the requirements.txt file:
pip install -Ur requirements.txt

Role Variables
--------------
You must set the environment variables with your Digital Ocean api token and region.  An example file
is included "example-set-creds.sh".  You should also either specify the ssh key you already use
for an existing droplet or create a new one locally using ssh-keygen so that the defaults set in
/vars/digital_ocean/main.yml are accurate.  Make sure to specify the private key in your ansible-playbook command,
or Ansible won't know how to connect.

Optionally pass in any of the variables provided in the itzg/minecraft docker image.

Dependencies
------------

Optionally if you don't want to use the Digital Ocean-provided Docker Ubuntu image,
you can also add in a docker installing role such as https://github.com/angstwad/docker.ubuntu
by specifying it in the dependencies for minecraft-container.

Examples
------------
ansible-playbook main.yml -e "OPS=my_minecraft_username LEVEL_TYPE=flat MODE=creative" --private-key=~/.ssh/minecraft_key

License
-------

BSD

Author Information
------------------
Sara Jarjoura
https://github.com/saranicole
