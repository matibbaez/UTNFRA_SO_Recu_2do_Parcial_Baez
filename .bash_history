sudo visudo -f /etc/sudoers.d/baez
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
ll
sudo apt install wget gpg
UBUNTU_CODENAME=jammy
wget -O- "https://keyserver.ubuntu.com/pks/lookup?fingerprint=on&op=get&search=0x6125E2A8C77F2818FB7BD15B93C4A3FD7BB9C367" | sudo gpg --dearmour -o /usr/share/keyrings/ansible-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/ansible-archive-keyring.gpg] http://ppa.launchpad.net/ansible/ansible/ubuntu $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/ansible.list
sudo apt update && sudo apt install ansible
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo docker run hello-world
docker run hello-world
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
./UTN-FRA_SO_Examenes/202407_Recu/script_Precondicion.sh
source  ~/.bashrc  && history -a
source ~/.bashrc
ll
sudo fdisk -l
sudo fdisk /dev/sdc
sudo pvcreate /dev/sdc1
sudo pvs
sudo vgcreate vg_temp /dev/sdc1
sudo pvs
sudo vgs
sudo fdisk /dev/sdd
sudo fdisk /dev/sdc
sudo pvcreate /dev/sdd1 /dev/sdc2
sudo pvs
sudo vgcreate vg_datos /dev/sdd1 /dev/sdc2
sudo vgs
sudo lvcreate -L +1.5G vg_datos -n lv_multimedia
sudo lvs
sudo lvcreate -L +10M vg_datos -n lv_docker
sudo lvs
sudo lvcreate -L +2G vg_temp -n lv_swap
sudo vgs
sudo lvcreate -l +100%FREE vg_temp -n lv_swap
sudo lvs
sudo fdisk /dev/sde
sudo mkfs.ext4 /dev/mapper/vg_temp-lv_swap
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_multimedia
free -h
sudo swapon /dev/mapper/vg_temp-lv_swap
sudo mkswap /dev/mapper/vg_temp-lv_swap
swapon /dev/m
swapon /dev/mapper/vg_temp-lv_swap
sudo swapon /dev/mapper/vg_temp-lv_swap
cat /proc/swaps
free -h
sudo ls -l /var/lib/docker
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
sudo ls -l /var/lib/docker
sudo systemctl status docker
sudo systemctl restart docker
sudo systemctl status docker
lsblk -f
ls /
sudo mkdir /Multimedia
ls /
sudo mount /dev/mapper/vg_datos-lv_multimedia /Multimedia/
df -h
sudo lsblk -f
sudo mkswap /dev/sde1
sudo swapon /dev/sde1
sudo lsblk -f
ll
cd UTN-FRA_SO_Examenes/
ll
cd /202407_Recu/bash_script/
cd 202407_Recu/bash_script/
cat Lista_URL.txt
cd ..
cd /usr/local/bin/
sudo vim Baez_check_URL.sh
cd ..
ll
cd ..
cd
ll
cd UTN-FRA_SO_Examenes/202407_Recu/docker/
ll
cd web/
ll
vim index.html
cd ..
docker login  -u matiasbaezc
ll
vim dockerfile
docker build -t matiasbaezc/web2-baez:v1 .
cd web/
docker build -t matiasbaezc/web2-baez:v1 .
sudo usermod -G docker baez
docker build -t matiasbaezc/web2-baez:v1 .
cd UTN-FRA_SO_Examenes/202407_Recu/docker/web/
docker build -t matiasbaezc/web2-baez:v1 .
cd ..
docker build -t matiasbaezc/web2-baez:v1 .
sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
sudo fdisk /dev/sde
sudo pvcreate /dev/sdc3
sudo pvcreate /dev/sde2
sudo vgextend vg_datos /dev/sdc3 /dev/sde2
sudo lvextend -L +800M /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker
docker build -t matiasbaezc/web2-baez:v1 .
docker image list
docker push matiasbaezc/web2-baez:v1
ll
cd web/
ll
cd file/
ll
cat info.txt
lscpu | grep "Model name" | awk -F: '{print "Modelo CPU: " $2}' > info.txt
lscpu | grep "CPU MHz" | awk -F: '{print "Frecuencia CPU: " $2}' >> info.txt
cd ..
ll
vim docker-compose.yml
docker-compose up -d
sudo apt install docker-compose
docker-compose --version
docker-compose up -d
docker ps
cat /usr/share/nginx/html/file/info.txt
docker exec -it docker_web_1 /bin/bash
cd ..
ll
cd ansible/
ll
cd
ssh-keygen
ll
cd ssh/
cd .ssh/
ll
cat id_rsa.pub >> authorized_keys
cd
cd UTN-FRA_SO_Examenes/202406
ll
cd ..
cd 202406_Recu/
ll
cd ansible
ll
cd roles/
ll
cd ..
ll
vim playbook.yml
ll
cd roles/
ll
cd 2PRecuperatorio/
ll
cd ..
mkdir -p instala-tools_baez/tasks
ll
cd 2PRecuperatorio/
ll
cd tasks/
LL
ll
vim main.yml
cd ..
mkdir templates
cd templates/
vim datos.j2
cd ..
ll
cd vars/
ll
vim main.yml
cd ..
ll
cd tasks/
ll
vim main.yml
cd ..
cd templates/
ll
vim datos.j2
cd ..
cd instala-tools_baez/
ll
cd tasks/
ll
vim main.yml
cd ..
ansible-playbook -i inventory/host playbook.yml --ask-become-pass
ansible-playbook -i inventory/hosts playbook.yml
ll
cd roles/
cd 2PRecuperatorio/
ll
cd ..
ll
cd playbook.yml
vim playbook.yml
ll
cd roles/
ll
cd 2PRecuperatorio/
ll
cd tasks/
ll
vim main.yml
cd ..
ll
cd templates/
ll
vim datos.j2
cd ..
ll
cd vars/
ll
vim main.yml
cd ..
ll
cd instala-tools_baez/
ll
cd tasks/
vim main.yml
cd ..
ll
rm -rf instala-tools_baez/
ll
ansible-galaxy role init instala-tools_baez
ll
cd instala-tools_baez/
ll
cd tasks/
ll
vim main.yml
cd ..
ll
vim playbool.yml
ll
rm playbool.yml
vim playbook.yml
ansible-playbook -i inventory/hosts playbook.yml
cd roles/
cd 2PRecuperatorio/
ll
cd tasks/
vim main.yml
cd ..
cd templates/
vim datos.j2
cd ..
vim playbook.yml
cd roles/
cd 2PRecuperatorio/
ll
cd ..
vim playbook.yml
cd roles/
cd 2PRecuperatorio/
cd tasks/
ll
vim main.yml
cd ..
ansible-playbook -i inventory/hosts playbook.yml
cd roles/| D
cd roles/
CD 2PRecuperatorio/
cd 2PRecuperatorio/
cd tasks/
vim main.yml
cd ..
ansible-playbook -i inventory/hosts playbook.yml
cd roles/
cd 2PRecuperatorio/
ll
cd ..
ll
cd ..
ll
cd inventory/
ll
cd ..
ll
sudo ansible-playbook -i inventory/hosts playbook.yml
cd roles/
ll
cd 2PRecuperatorio/
ll
cd tasks/
vim main.yml
cd .
cd ..
cd templates/
cd ..
cd
cd /tmp/alumno/datos.txt
ll
cd .ansible/
ll
cd tmp/
ll
cd
cd UTN-FRA_SO_Examenes/
cd
cd UTN-FRA_SO_Examenes/
ll
cd 202406_Recu/
ll
cd ansible/
ll
vim playbook.yml
cd roles/
ll
cd 2PRecuperatorio/
ll
cd templates/
vim main.yml
ll
rm main.yml
ll
vim datos.j2
cd ..
cd
ls -l /tmp/alumno/datos.txt
ll
cd RTA_Examen_20240712/
ll
vim Punto_A.sh 
echo "Comandos utilizados para el Punto A:" > Punto_A.txt
cat Punto_A.txt 
echo "sudo fdisk -l" >> Punto_A.txt
cat Punto_A.txt 
cd
ll
git clone https://github.com/matibbaez/UTNFRA_SO_Recu_2do_Parcial_Baez.git
ll
rm UTNFRA_SO_Recu_2do_Parcial_Baez/
ssh-keygen -t rsa -b 4096 -C "matiascaneda3@gmail.com"
cd ~/.ssh/
ls -l
cat id_rsa.pub
ssh -T git@github.com
cd
ll
cp -r RTA_Examen_20240712 UTNFRA_SO_Recu_2do_Parcial_Baez/
cp -r UTN-FRA_SO_Examenes UTNFRA_SO_Recu_2do_Parcial_Baez/
cd UTNFRA_SO_Recu_2do_Parcial_Baez
ll
git add .
git rm --cached UTN-FRA_SO_Examenes
cd ..
ll
rm -rf UTNFRA_SO_Recu_2do_Parcial_Baez
ll
git clone https://github.com/matibbaez/UTNFRA_SO_Recu_2do_Parcial_Baez.git
ll
cp -r <Path-Repo>/202407_Recu UTNFRA_SO_Recu_2do_Parcial_Baez/
cd RTA_Examen_20240712/
ll
cd ..
cd UTN-FRA_SO_Examenes/
ll
cp -r 202407_Recu ~/UTNFRA_SO_Recu_2do_Parcial_Baez/
cd ..
cp -r RTA_Examen_20240712 UTNFRA_SO_Recu_2do_Parcial_Baez/
