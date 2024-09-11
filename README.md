# ultidock-media-server-build

## Step 1
This will be chamges, but right now I dont know how.
```
sudo chown -R $USER:$USER  /mnt && sudo
chmod -R a+rwx /mnt
```
```
sudo mkdir /opt/appdata
```
```
sudo chown -R $USER:$USER /opt/appdata && sudo chmod -R a+rwx /opt/appdata
```

## Step 2
```
cd /scripts/folder-tree
```
```
sudo chmod u+x *
```
```
./folder.sh
```

## Step 3
Install Docker Engine on Ubuntu

Run the following command to uninstall all conflicting packages:
```
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
```

Set up Docker's apt repository.

# Add Docker's official GPG key:
```
sudo apt-get update
```
```
sudo apt-get install ca-certificates curl
```
```
sudo install -m 0755 -d /etc/apt/keyrings
```
```
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
```
```
sudo chmod a+r /etc/apt/keyrings/docker.asc
```

# Add the repository to Apt sources:
```
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
```
```
sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```
```
sudo apt-get update
```

Install the Docker packages.
To install the latest version, run:
```
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

Add User to docker Group:
```
sudo usermod -aG docker $USER
```

logout and login run:
```
docker run hello-world
```