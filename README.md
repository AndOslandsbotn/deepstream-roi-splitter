# Deepstream-roi-splitter
Splits video streams into multiple substreams from different regions of interests using NVIDIAS deepstream SDK

# Getting Started
To get started clone the repository and start container using
### Starting in interactive container
```bash
docker-compose run deepstream
```

### Using VS code
In VS code go to ctrl + shift + P, then select Dev Containers: Open Folder in Container

# Git access inside the DeepStream dev container (SSH agent)

This project uses a Docker dev container for DeepStream.
When working inside the container (e.g. via VSCode Dev Containers), git push may fail with:

Permission denied (publickey)

This happens because the container does not have access to your SSH private keys.

We do not copy keys into the container.
Instead, we use SSH agent forwarding

### Step 1 — Ensure SSH tools are installed (WSL / Linux host)
```bash
sudo apt update sudo apt install -y openssh-client
```

### Step 2 — Start the SSH agent
```bash
eval "$(ssh-agent -s)"
```

### Step 3 — Add your SSH key to the agent
```bash
ssh-add ~/.ssh/id_rsa
```

### Step 4
```bash
docker-compose down docker-compose up -d
```