Playbook Name
=========
stem-minecraft

Description
------------
Created for DevOps Days Boston http://www.devopsdays.org/events/2016-boston/program/sara-jarjoura/
Background at http://sarastreeter.com/2016/05/19/zero-to-devops-thru-minecraft/

Requirements
------------

Install the requirements from the requirements.txt file:
pip install -Ur requirements.txt

Screencast
----------
Asciinema
[![asciicast](https://asciinema.org/a/2gojihwmv3k8urg2oujppe66q.png)](https://asciinema.org/a/2gojihwmv3k8urg2oujppe66q)

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
